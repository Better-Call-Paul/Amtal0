#ifndef DATA_FETCHER_HPP
#define DATA_FETCHER_HPP

#include <string>
#include <vector>
#include "datum.hpp"
#include "ohlcv.hpp"

namespace Amtal {

class DataFetcher {
public:
    DataFetcher();
    ~DataFetcher();

    std::vector<Amtal::OHLCV> fetchHistoricalData(
        const std::string& dataset,
        const std::string& symbols,
        const std::string& schema,
        const std::string& start,
        const std::string& end
    );

private:
    std::string apiKey;
    static size_t WriteCallback(void* contents, size_t size, size_t nmemb, void* userp);
    std::string performCurlRequest(const std::string& url);
};
}

#endif // DATA_FETCHER_HPP