#include "data_fetcher.hpp"
#include <curl/curl.h>
#include <nlohmann/json.hpp>
#include <sstream>
#include <cstdlib>
#include <stdexcept>
#include <chrono>

namespace Amtal {

DataFetcher::DataFetcher() {
    const char* env_api_key = std::getenv("DATA_API_KEY");
    if (env_api_key == nullptr) {
        throw std::runtime_error("Environment variable DATA_API_KEY not set");
    }
    apiKey = env_api_key;
    curl_global_init(CURL_GLOBAL_DEFAULT);
}

DataFetcher::~DataFetcher() {
    curl_global_cleanup();
}

size_t DataFetcher::WriteCallback(void* contents, size_t size, size_t nmemb, void* userp) {
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

std::string DataFetcher::performCurlRequest(const std::string& url) {
    CURL* curl = curl_easy_init();
    std::string readBuffer;

    if (curl) {
        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);

        std::string auth = "db-" + apiKey + ":";
        curl_easy_setopt(curl, CURLOPT_USERPWD, auth.c_str());

        CURLcode res = curl_easy_perform(curl);
        curl_easy_cleanup(curl);

        if (res != CURLE_OK) {
            throw std::runtime_error(std::string("curl_easy_perform() failed: ") + curl_easy_strerror(res));
        }
    }

    return readBuffer;
}

std::vector<Amtal::OHLCV> DataFetcher::fetchHistoricalData(
    const std::string& dataset,
    const std::string& symbols,
    const std::string& schema,
    const std::string& start,
    const std::string& end
) {
    std::stringstream url;
    url << "https://hist.databento.com/v0/timeseries.get_range"
        << "?dataset=" << dataset
        << "&symbols=" << symbols
        << "&schema=" << schema
        << "&start=" << start
        << "&end=" << end
        << "&encoding=json";

    std::string response = performCurlRequest(url.str());

    nlohmann::json jsonData = nlohmann::json::parse(response);

    std::vector<Amtal::OHLCV> ohlcvData;
    for (const auto& item : jsonData) {
        Amtal::OHLCV ohlcv;
        ohlcv.timestamp.d_dateTime = std::chrono::system_clock::from_time_t(item["ts"].get<int64_t>() / 1000000000);
        ohlcv.open.d_value = item["open"].get<double>();
        ohlcv.high.d_value = item["high"].get<double>();
        ohlcv.low.d_value = item["low"].get<double>();
        ohlcv.close.d_value = item["close"].get<double>();
        ohlcv.volume.d_number = item["volume"].get<int>();
        ohlcvData.push_back(ohlcv);
    }

    return ohlcvData;
}
}