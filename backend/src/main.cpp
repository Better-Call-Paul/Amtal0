#include "data_client.hpp"
#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <chrono>
#include <nlohmann/json.hpp>
#include <map>
#include <algorithm>
#include <vector>

struct SymbolData {
    double open_first;
    double close_last;
    double volume_sum;
    double change;
};

int main() {
    const char* api_key = std::getenv("data_api_key");
    if (!api_key) {
        std::cerr << "Error: Environment variable 'data_api_key' is not set." << std::endl;
        return 1;
    }

    Amtal::DataClient client(api_key);

    // Hardcoded values
    const std::string symbols = "ALL_SYMBOLS";
    
    // Convert string times to std::chrono::system_clock::time_point
    std::tm start_tm = {};
    std::tm end_tm = {};
    std::istringstream start_ss("2023-06-06T04:00");
    std::istringstream end_ss("2023-06-06T09:30");
    start_ss >> std::get_time(&start_tm, "%Y-%m-%dT%H:%M");
    end_ss >> std::get_time(&end_tm, "%Y-%m-%dT%H:%M");
    
    auto start = std::chrono::system_clock::from_time_t(std::mktime(&start_tm));
    auto end = std::chrono::system_clock::from_time_t(std::mktime(&end_tm));

    try {
        std::vector<Amtal::OHLCV> data = client.getOHLCVData(symbols, start, end);

        // Process data
        std::map<std::string, SymbolData> symbol_data;
        for (const auto& ohlcv : data) {
            auto& sd = symbol_data[ohlcv.symbol];
            if (sd.open_first == 0) sd.open_first = ohlcv.open;
            sd.close_last = ohlcv.close;
            sd.volume_sum += ohlcv.volume;
        }

        // Calculate changes and prepare for sorting
        std::vector<std::pair<std::string, SymbolData>> sorted_data;
        for (auto& [symbol, sd] : symbol_data) {
            sd.change = (sd.close_last - sd.open_first) / sd.open_first;
            sorted_data.emplace_back(symbol, sd);
        }

        // Sort by change
        std::sort(sorted_data.begin(), sorted_data.end(),
                  [](const auto& a, const auto& b) { return a.second.change > b.second.change; });

        // Display top 10 movers
        std::cout << "Top 10 largest movers:" << std::endl;
        std::cout << std::setw(10) << "Symbol" << std::setw(10) << "Open" << std::setw(10) << "Close"
                  << std::setw(10) << "Volume" << std::setw(10) << "Change%" << std::endl;

        for (size_t i = 0; i < 10 && i < sorted_data.size(); ++i) {
            const auto& [symbol, sd] = sorted_data[i];
            std::cout << std::fixed << std::setprecision(2)
                      << std::setw(10) << symbol
                      << std::setw(10) << sd.open_first
                      << std::setw(10) << sd.close_last
                      << std::setw(10) << sd.volume_sum
                      << std::setw(10) << (sd.change * 100) << "%" << std::endl;
        }

    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }

    return 0;
}