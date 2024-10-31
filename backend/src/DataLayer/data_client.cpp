#include "data_client.hpp"
#include <stdexcept>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <cctype>
#include <curl/curl.h>

namespace Amtal {

static size_t write_call_back(void* contents, size_t size, size_t nmemb, void* userp) {

    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

std::string get_historical_data(
        const std::string& dataset,
        const std::string& start,
        const std::string& end,
        const std::string& symbols = "",
        const std::string& schema = "",
        const std::string& encoding = "json",
        const std::map<std::string, std::string>& additionalParams = {}) {

    std::map<std::string, std::string> params = {
        {"dataset", dataset}, 
        {"start", start}, 
        {"end", end},
        {"encoding", encoding}
    };

    if (!symbols.empty()) {
        params["symbols"] = symbols;
    }

    if (!schema.empty()) {
        params["schema"] = schema;
    }

    for (const auto& [key, value] : additionalParams) {
        params[key] = value;
    }

    std::string query_string = build_query_string(params);
    std::string url = baseUrl_ + "?" + query_string;

    std::string authHeader = apiKey_ + ":";

    return http_get(url, authHeader);
}

DataClient::DataClient(const std::string& apiKey) apiKey_(apiKey) {}

DataClient::~DataClient() {}

std::string http_get(const std::string& url, const std::string& auth_header) {



}

std::string build_query_string(const std::map<std::string, std::string>& params) {

}





} // namespace Amtal