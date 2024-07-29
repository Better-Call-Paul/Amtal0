#include "data_client.hpp"
#include <stdexcept>
#include <sstream>
#include <iomanip>

namespace Amtal {

DataClient::DataClient(const std::string& apiKey) : apiKey(apiKey) {
    curl_global_init(CURL_GLOBAL_DEFAULT);
    curl = curl_easy_init();
    if (!curl) {
        throw std::runtime_error("Failed to initialize CURL");
    }
}

DataClient::~DataClient() {
    curl_easy_cleanup(curl);
    curl_global_cleanup();
}

std::vector<OHLCV> DataClient::getOHLCVData(const std::string& symbol,
                                            const std::chrono::system_clock::time_point& start,
                                            const std::chrono::system_clock::time_point& end) {
    std::stringstream params;
    
    time_t start_time_t = std::chrono::system_clock::to_time_t(start);
    time_t end_time_t = std::chrono::system_clock::to_time_t(end);
    
    params << "dataset=GLBX.MDP3"
           << "&symbols=" << symbol
           << "&schema=ohlcv-1s"
           << "&start=" << std::put_time(std::localtime(&start_time_t), "%Y-%m-%dT%H:%M")
           << "&end=" << std::put_time(std::localtime(&end_time_t), "%Y-%m-%dT%H:%M")
           << "&encoding=json";

    std::string response = makeRequest("https://hist.databento.com/v0/timeseries.get_range", params.str());

    nlohmann::json jsonResponse = nlohmann::json::parse(response);
    std::vector<OHLCV> result;

    for (const auto& item : jsonResponse["data"]) {
        OHLCV ohlcv;
        ohlcv.open = item["open"];
        ohlcv.high = item["high"];
        ohlcv.low = item["low"];
        ohlcv.close = item["close"];
        ohlcv.volume = item["volume"];
        result.push_back(ohlcv);
    }

    return result;
}

size_t DataClient::WriteCallback(void* contents, size_t size, size_t nmemb, std::string* output) {
    size_t totalSize = size * nmemb;
    output->append((char*)contents, totalSize);
    return totalSize;
}

std::string DataClient::makeRequest(const std::string& url, const std::string& params) {
    std::string fullUrl = url + "?" + params;
    std::string response;

    curl_easy_setopt(curl, CURLOPT_URL, fullUrl.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);
    curl_easy_setopt(curl, CURLOPT_USERPWD, (apiKey + ":").c_str());

    CURLcode res = curl_easy_perform(curl);
    if (res != CURLE_OK) {
        throw std::runtime_error("CURL request failed: " + std::string(curl_easy_strerror(res)));
    }

    return response;
}

} // namespace Amtal