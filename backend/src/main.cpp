#include "data_client.hpp"
#include <iostream>
#include <iomanip>

int main() {
    std::ios_base::sync_with_stdio(false);
    std::cin.tie(0);

    const char* api_key = std::getenv("data_api_key");
    if (!api_key) {
        std::cerr << "Error: Environment variable 'data_api_key' is not set." << "\n";
        return 1;
    }
    Amtal::DataClient client(api_key);

    auto now = std::chrono::system_clock::now();
    auto start = now - std::chrono::hours(1);
    auto end = now;

    try {
        std::vector<Amtal::OHLCV> data = client.getOHLCVData("ESM2", start, end);

        std::cout << "OHLCV data for ESM2:" << "\n";
        std::cout << std::setw(25) << "Open" << std::setw(10) << "High" << std::setw(10) << "Low" 
                  << std::setw(10) << "Close" << std::setw(10) << "Volume" << "\n";

        for (const auto& ohlcv : data) {
            std::cout << std::fixed << std::setprecision(2)
                      << std::setw(25) << ohlcv.open << std::setw(10) << ohlcv.high << std::setw(10) << ohlcv.low 
                      << std::setw(10) << ohlcv.close << std::setw(10) << ohlcv.volume << "\n";
        }
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << "\n";
        return 1;
    }

    return 0;
}