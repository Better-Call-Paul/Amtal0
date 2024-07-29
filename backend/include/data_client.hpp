#ifndef DATA_CLIENT_HPP
#define DATA_CLIENT_HPP

#include <string>
#include <vector>
#include <chrono>
#include <curl/curl.h>
#include <nlohmann/json.hpp>
#include "datum.hpp"

namespace Amtal {

struct OHLCV {
    double open;
    double high;
    double low;
    double close;
    double volume;
};

class DataClient {
public:
    DataClient(const std::string& apiKey);
    ~DataClient();

    std::vector<OHLCV> getOHLCVData(const std::string& symbol, 
                                    const std::chrono::system_clock::time_point& start,
                                    const std::chrono::system_clock::time_point& end);

private:
    static size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* output);
    std::string makeRequest(const std::string& url, const std::string& params);
    
    CURL* curl;
    std::string apiKey;
};

} // namespace Amtal

#endif // DATA_CLIENT_HPP