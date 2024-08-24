#include "data_client.hpp"
#include <stdexcept>
#include <sstream>
#include <iomanip>

namespace Amtal {

DataClient::DataClient(std::string api_key) : apiKey(api_key) {
    curl = curl_easy_init();
    if (!curl) std::cout << "Curl Initialization Failed" << "\n"; 
}

DataClient::~DataClient() {
    if (curl) curl_easy_cleanup(curl);
    curl_global_cleanup();
}

std::string DataClient::parse_historical_data(const std::string& dataset,
                                              const std::string& start,
                                              const std::string& end,
                                              const std::string& symbols,
                                              const std::string& schema,
                                              const std::string& encoding,
                                              const std::string& stype_in,
                                              const std::string& stype_out) {
    if (!curl) {
        throw std::runtime_error("CURL not initialized");
    }

    std::string url = "https://hist.databento.com/v0/timeseries.get_range";
    std::ostringstream params;
    params << "dataset=" << dataset
           << "&start=" << start
           << "&end=" << end;

    if (!symbols.empty()) params << "&symbols=" << symbols;
    if (!schema.empty()) params << "&schema=" << schema;
    if (!encoding.empty()) params << "&encoding=" << encoding;
    if (!stype_in.empty()) params << "&stype_in=" << stype_in;
    if (!stype_out.empty()) params << "&stype_out=" << stype_out;

    std::string fullUrl = url + "?" + params.str();
    
    curl_easy_reset(curl);
    curl_easy_setopt(curl, CURLOPT_URL, fullUrl.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);

    std::string response_string;
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response_string);

    // Set up Basic Authentication
    std::string auth_string = apiKey + ":";
    curl_easy_setopt(curl, CURLOPT_USERPWD, auth_string.c_str());

    CURLcode res = curl_easy_perform(curl);

    if (res != CURLE_OK) {
        throw std::runtime_error("CURL request failed: " + std::string(curl_easy_strerror(res)));
    }

    return response_string;
}

std::vector<Datum> DataClient::process_json_response(const std::string& json_response) {
    std::vector<Datum> data;
    nlohmann::json j = nlohmann::json::parse(json_response);

    for (const auto& item : j) {
        Datum datum;
        
        // Process each field based on the schema
        if (item.contains("ts_event")) {
            datum.d_dateTime = std::chrono::system_clock::time_point(std::chrono::nanoseconds(item["ts_event"].get<int64_t>()));
        }
        if (item.contains("instrument_id")) {
            datum.d_instrumentId = item["instrument_id"].get<uint32_t>();
        }
        if (item.contains("price")) {
            datum.d_price = static_cast<double>(item["price"].get<int64_t>()) / 1e9;
        }
        if (item.contains("size")) {
            datum.d_size = item["size"].get<uint32_t>();
        }
        if (item.contains("side")) {
            std::string side = item["side"].get<std::string>();
            if (side == "Ask") datum.d_side = Side::Ask;
            else if (side == "Bid") datum.d_side = Side::Bid;
            else datum.d_side = Side::None;
        }
        if (item.contains("action")) {
            std::string action = item["action"].get<std::string>();
            if (action == "Add") datum.d_action = Action::Add;
            else if (action == "Cancel") datum.d_action = Action::Cancel;
            else if (action == "Modify") datum.d_action = Action::Modify;
            else if (action == "Trade") datum.d_action = Action::Trade;
            else if (action == "Fill") datum.d_action = Action::Fill;
            else datum.d_action = Action::Clear;
        }

        data.push_back(datum);
    }

    return data;
}

std::string DataClient::format_timestamp(const std::string& timestamp) {
    // Check if the timestamp is already in the correct format
    if (timestamp.length() == 10 || timestamp.length() == 16 || timestamp.length() == 19 || timestamp.length() == 29) {
        return timestamp;
    }

    // If it's a UNIX timestamp (assuming milliseconds)
    try {
        int64_t unix_timestamp = std::stoll(timestamp);
        auto tp = std::chrono::system_clock::time_point(std::chrono::milliseconds(unix_timestamp));
        auto tt = std::chrono::system_clock::to_time_t(tp);
        std::tm* gmt = std::gmtime(&tt);
        std::stringstream ss;
        ss << std::put_time(gmt, "%Y-%m-%dT%H:%M:%S");
        return ss.str();
    } catch (const std::exception& e) {
        throw std::runtime_error("Invalid timestamp format");
    }
}

} // namespace Amtal