#include "data_client.hpp"
#include <stdexcept>
#include <sstream>
#include <iomanip>

namespace Amtal {


DataClient::DataClient(std::string api_key) : apiKey(api_key) {
    curl_global_init(CURL_GLOBAL_DEFAULT);
    curl = curl_easy_init();
}

DataClient::~DataClient() {
    curl_easy_cleanup(curl);
    curl_global_cleanup();

}

std::string DataClient::parse_historial_data(const std::string& dataset, 
                                  const std::string& start, 
                                  const std::string& end, 
                                  const std::string& symbols, 
                                  const std::string& schema, 
                                  const std::string& encoding) {
    

}

} // namespace Amtal