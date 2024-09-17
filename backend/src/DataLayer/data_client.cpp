#include "data_client.hpp"
#include <stdexcept>
#include <sstream>
#include <iostream>
#include <iomanip>

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

std::string DataClient::request_historical_data(const std::string& dataset, const std::string& symbols,
                                        const std::string& schema, const std::string& start, 
                                        const std::string& end, const std::string& encoding,
                                        const std::stringstream& url) {
    std::string response_data;
    std::string api_key_auth = apiKey + ":";

    if (curl) {
        std::stringstream query_parameters;
        query_parameters << "&dataset=" << dataset << "&symbols=" << symbols << "&schema=" << schema 
        << "&start=" << start << "&end=" << end << "&encoding=" << encoding;

        curl_easy_setopt(curl, CURLOPT_URL, url.str().c_str());
        curl_easy_setopt(curl, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
        curl_easy_setopt(curl, CURLOPT_USERPWD, api_key_auth.c_str());

        // Set query parameters
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, query_parameters.str().c_str());

        // Set the callback to write data to the response_data string
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_call_back);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response_data);

        // Perform the request
        CURLcode res = curl_easy_perform(curl);
        if (res != CURLE_OK) {
            std::cerr << "curl_easy_perform() failed: " << curl_easy_strerror(res) << "\n";
        }
    }
    return response_data;
}

std::vector<Datum> DataClient::parse_historical_data(const std::string& market_data) {
    std::vector<Datum> result;
    result.reserve(14);
    
    try {
        nlohmann::json parsed_json = nlohmann::json::parse(market_data);
        
        std::vector<std::string> schemas {"dataset", "publisher_id", "instrument_id", "order_id", "ts_event", "ts_recv", "ts_in_delta", "ts_out", "price", "side", "size", "flag", "action", "sequence"};

        for (const auto& field : schemas) {
            if (parsed_json.contains(field)) {
                // parse out into datum
                if (field == "ts_event" || field == "ts_recv" || field == "ts_in_delta" || field == "ts_out") {
                    if (parsed_json[field].is_string() || parsed_json[field].is_number_integer()) {
                        auto timestamp = std::stoll(parsed_json[field].get<std::string>()) / 1'000'000'000;
                        result.emplace_back(std::chrono::system_clock::time_point(std::chrono::seconds(timestamp)));  // Corrected construction
                    }
                }
                else if (parsed_json[field].is_number_integer()) {
                    result.emplace_back(parsed_json[field].get<int>());
                }
                else if (parsed_json[field].is_number_float()) {
                    result.emplace_back(parsed_json[field].get<float>());
                }
                else if (parsed_json[field].is_string()) {
                    result.emplace_back(parsed_json[field].get<std::string>());
                }
                else if (parsed_json[field].is_boolean()) {
                    result.emplace_back(parsed_json[field].get<std::string>());
                }
            }
        }
    }
    catch (const nlohmann::json::exception& e) {
        //std::cout << "Json Error " << e << "\n";
    }
    
    return result;
}
} // namespace Amtal