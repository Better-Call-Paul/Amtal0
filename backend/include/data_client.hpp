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

    std::string parse_historial_data(const std::string& dataset, 
                                  const std::string& start, 
                                  const std::string& end, 
                                  const std::string& symbols, 
                                  const std::string& schema, 
                                  const std::string& encoding);

    
   

private:
    CURL* curl;
    std::string apiKey;

    
};

} // namespace Amtal

#endif // DATA_CLIENT_HPP