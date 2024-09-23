#include "data_client.hpp"
#include <stdexcept>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <cctype>

namespace Amtal {

DataClient::DataClient(std::string api_key) : apiKey(api_key) {
    curl_global_init(CURL_GLOBAL_DEFAULT);
    curl = curl_easy_init();
}

DataClient::~DataClient() {
    if (curl) curl_easy_cleanup(curl);
    curl_global_cleanup();
}

size_t DataClient::write_call_back(void* contents, size_t size, size_t number_of_elements, std::string* user_pointer) {
    size_t total_size = size * number_of_elements;
    if (user_pointer) user_pointer->append(static_cast<char*>(contents), total_size);
    return total_size;
}

std::string DataClient::request_historical_data(const std::string& dataset,
                                                const std::string& symbols,
                                                const std::string& schema,
                                                const std::string& start,
                                                const std::string& end,
                                                const std::string& encoding,
                                                const std::string& url) {
    std::string response_data;
    std::string api_key_auth = apiKey + ":";

    if (curl) {
        std::string base_url = url;

        auto escape = [this](const std::string& str) -> std::string {
            char* output = curl_easy_escape(curl, str.c_str(), str.length());
            std::string escaped_str;
            if (output) {
                escaped_str = output;
                curl_free(output);
            }
            return escaped_str;
        };

        std::stringstream query_parameters;
        query_parameters << "dataset=" << escape(dataset)
                         << "&symbols=" << escape(symbols)
                         << "&schema=" << escape(schema)
                         << "&start=" << escape(start)
                         << "&end=" << escape(end)
                         << "&encoding=" << escape(encoding);

        std::string full_url = base_url + "?" + query_parameters.str();

        curl_easy_setopt(curl, CURLOPT_URL, full_url.c_str());
        curl_easy_setopt(curl, CURLOPT_HTTPGET, 1L);
        curl_easy_setopt(curl, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
        curl_easy_setopt(curl, CURLOPT_USERPWD, api_key_auth.c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_call_back);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response_data);

        CURLcode res = curl_easy_perform(curl);
        if (res != CURLE_OK) {
            std::cerr << "curl_easy_perform() failed: " << curl_easy_strerror(res) << "\n";
        }
    }
    return response_data;
}

std::vector<Datum> DataClient::parse_historical_data(const std::string& market_data) {
    std::vector<Datum> result;

    size_t pos = 0;
    size_t length = market_data.size();

    while (pos < length) {
        // Skip any whitespace
        while (pos < length && std::isspace(market_data[pos])) {
            ++pos;
        }

        if (pos >= length) {
            break;
        }

        // Ensure the start of a JSON object
        if (market_data[pos] != '{') {
            std::cerr << "Expected '{' at position " << pos << "\n";
            break;
        }

        // Find the matching closing '}'
        int brace_count = 0;
        size_t end_pos = pos;

        while (end_pos < length) {
            if (market_data[end_pos] == '{') {
                ++brace_count;
            } else if (market_data[end_pos] == '}') {
                --brace_count;
                if (brace_count == 0) {
                    ++end_pos; // Include the closing '}'
                    break;
                }
            }
            ++end_pos;
        }

        if (brace_count != 0) {
            std::cerr << "Unmatched braces in JSON data\n";
            break;
        }

        // Extract the JSON object substring
        std::string json_str = market_data.substr(pos, end_pos - pos);

        try {
            nlohmann::json item = nlohmann::json::parse(json_str);

            // Process the JSON object `item`
            // Extract fields and create Datum objects
            if (item.contains("hd")) {
                const auto& hd = item["hd"];
                if (hd.contains("ts_event")) {
                    std::string ts_event_str = hd["ts_event"].get<std::string>();
                    long long ts_event_ns = std::stoll(ts_event_str);
                    
                    // Convert nanoseconds to system_clock::duration
                    auto ts_event_duration = std::chrono::duration_cast<std::chrono::system_clock::duration>(
                        std::chrono::nanoseconds(ts_event_ns)
                    );
                    
                    // Create time_point with the converted duration
                    auto ts_event_time = std::chrono::system_clock::time_point(ts_event_duration);
                    
                    result.emplace_back(ts_event_time);
                }
                if (hd.contains("rtype")) {
                    result.emplace_back(hd["rtype"].get<int>());
                }
                // Add other fields from "hd" as needed
            }

            // Extract other fields like "open", "high", etc.
            if (item.contains("open")) {
                // Assuming price is represented as a string of an integer (e.g., "4162750000000")
                std::string open_str = item["open"].get<std::string>();
                double open_price = std::stod(open_str) / 1e8; // Adjust the scale as per API documentation
                result.emplace_back(open_price);
            }
            if (item.contains("high")) {
                std::string high_str = item["high"].get<std::string>();
                double high_price = std::stod(high_str) / 1e8;
                result.emplace_back(high_price);
            }
            if (item.contains("low")) {
                std::string low_str = item["low"].get<std::string>();
                double low_price = std::stod(low_str) / 1e8;
                result.emplace_back(low_price);
            }
            if (item.contains("close")) {
                std::string close_str = item["close"].get<std::string>();
                double close_price = std::stod(close_str) / 1e8;
                result.emplace_back(close_price);
            }
            if (item.contains("volume")) {
                result.emplace_back(item["volume"].get<int>());
            }

        } catch (const nlohmann::json::exception& e) {
            std::cerr << "JSON parsing error: " << e.what() << "\n";
            break;
        }

        // Move to the next JSON object
        pos = end_pos;
    }

    return result;
}

} // namespace Amtal