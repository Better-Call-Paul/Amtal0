#ifndef DATA_CLIENT_HPP
#define DATA_CLIENT_HPP

#include <string>
#include <vector>
#include <map>

namespace Amtal {

class DataClient {
public:
    DataClient(const std::string& apiKey);

    ~DataClient();

    std::string get_historical_data(
        const std::string& dataset,
        const std::string& start,
        const std::string& end,
        const std::string& symbols = "",
        const std::string& schema = "",
        const std::string& encoding = "json",
        const std::map<std::string, std::string>& additionalParams = {});

private:
    std::string apiKey_;
    const std::string baseUrl_ = "https://hist.databento.com/v0/timeseries.get_range";

    std::string http_get(const std::string& url, const std::string& auth_header);

    std::string build_query_string(const std::map<std::string, std::string>& params);

    std::string parse_json(const std::string input); 
};


} // namespace Amtal

#endif // DATA_CLIENT_HPP