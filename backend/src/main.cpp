#include <iostream>
#include <thread>
#include <vector>
#include <iomanip>
#include "data_fetcher.hpp"

void printOHLCVData(const std::vector<Amtal::OHLCV>& data) {
    std::cout << std::setw(25) << "Timestamp" << std::setw(10) << "Open" << std::setw(10) << "High" 
              << std::setw(10) << "Low" << std::setw(10) << "Close" << std::setw(10) << "Volume" << std::endl;
    
    for (const auto& ohlcv : data) {
        auto time = std::chrono::system_clock::to_time_t(ohlcv.timestamp.d_dateTime);
        std::cout << std::setw(25) << std::put_time(std::localtime(&time), "%Y-%m-%d %H:%M:%S")
                  << std::setw(10) << ohlcv.open.d_value
                  << std::setw(10) << ohlcv.high.d_value
                  << std::setw(10) << ohlcv.low.d_value
                  << std::setw(10) << ohlcv.close.d_value
                  << std::setw(10) << ohlcv.volume.d_number << std::endl;
    }
}

int main() {
    DataFetcher fetcher;

    // Main server loop
    std::string input;
    while (true) {
        std::cout << "Enter command (or 'exit' to quit): ";
        std::getline(std::cin, input);
        
        if (input == "exit") {
            break;
        }

        // Parse input
        std::vector<std::string> tokens;
        std::istringstream iss(input);
        std::string token;
        while (std::getline(iss, token, ' ')) {
            tokens.push_back(token);
        }

        if (!tokens.empty() && tokens[0] == "historical") {
            if (tokens.size() < 6) {
                std::cout << "Usage: historical <dataset> <symbols> <schema> <start> <end>" << std::endl;
                continue;
            }
            try {
                std::vector<Amtal::OHLCV> data = fetcher.fetchHistoricalData(
                    tokens[1], tokens[2], tokens[3], tokens[4], tokens[5]);
                printOHLCVData(data);
            } catch (const std::exception& e) {
                std::cerr << "Error: " << e.what() << std::endl;
            }
        } else {
            std::cout << "Unknown command" << std::endl;
        }
    }

    return 0;
}