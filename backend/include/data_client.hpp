#ifndef DATA_CLIENT_HPP
#define DATA_CLIENT_HPP

#include <string>
#include <vector>
#include <chrono>
#include <curl/curl.h>
#include <nlohmann/json.hpp>
#include "datum.hpp"

using json = nlohmann::json;

namespace Amtal {

class DataClient {
public:
    DataClient(std::string api_key);
    ~DataClient();

    std::string parse_historical_data(const std::string& market_data);

    std::vector<Datum> process_json_response(const std::string& json_response);

private:
    CURL* curl;
    std::string apiKey;

    std::string format_timestamp(const std::string& timestamp);
    static size_t write_call_back(void* contents, size_t size, size_t number_elements, std::string* user_pointer);

    
};

} // namespace Amtal

#endif // DATA_CLIENT_HPP