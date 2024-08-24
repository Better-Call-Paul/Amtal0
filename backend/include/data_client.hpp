#ifndef DATA_CLIENT_HPP
#define DATA_CLIENT_HPP

#include <string>
#include <vector>
#include <chrono>
#include <curl/curl.h>
#include <nlohmann/json.hpp>
#include "datum.hpp"

namespace Amtal {

class DataClient {
public:
    DataClient(std::string api_key);
    ~DataClient();

    std::string parse_historial_data(const std::string& url,
                                  const std::string& dataset, 
                                  const std::string& start, 
                                  const std::string& end, 
                                  const std::string& symbols, 
                                  const std::string& schema, 
                                  const std::string& encoding);

    std::vector<Datum> process_json_request(const std::string& json_response);

    std::string format_timestamp(const std::string& timestamp);
   

private:
    CURL* curl;
    std::string apiKey;

    size_t write_call_back(void* contents, size_t size, size_t number_elements, std::string* user_pointer);

    
};

} // namespace Amtal

#endif // DATA_CLIENT_HPP