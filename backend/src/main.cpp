#include "data_client.hpp"
#include <iostream>
#include <iomanip>
#include <fstream>
#include <string>
#include <chrono>
#include <nlohmann/json.hpp>
#include <map>
#include <algorithm>
#include <vector>
#include <unordered_map>
#include <queue>
#include "datum.hpp"
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>

int main() {

    std::ios_base::sync_with_stdio(false);
    std::cin.tie(nullptr);

    const std::string secret_path = "/run/secrets/api_key_secret";

    // Read API key from the secret file
    std::ifstream api_key_file(secret_path);
    if (!api_key_file.is_open()) {
        std::cerr << "Error: Unable to open API key secret file at " << secret_path << "\n";
        return 1;
    }

    std::string api_key;
    std::getline(api_key_file, api_key);
    api_key_file.close();

    if (api_key.empty()) {
        std::cerr << "Error: API key is empty.\n";
        return 1;
    }

    Amtal::DataClient client(api_key);

    std::string dataset = "GLBX.MDP3";
    std::string symbols = "ESM2";
    std::string schema = "ohlcv-1s";
    std::string start = "2022-06-06T14:30";
    std::string end = "2022-06-06T14:40";
    std::string encoding = "json";
    std::string url = "https://hist.databento.com/v0/timeseries.get_range";

    std::string data = client.request_historical_data(dataset, symbols, schema, start, end, encoding, url);

    std::cout << "Raw Data:\n" << data << "\n";

    std::vector<Amtal::Datum> data_vector = client.parse_historical_data(data);

    for (const auto& datum : data_vector) {
        datum.log_datum();
    }
    
    int server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd == -1) {
        std::cerr << "Error: Failed to create socket.\n";
        return 1;
    }

    sockaddr_in address{};
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(8080);

    if (bind(server_fd, (sockaddr*)&address, sizeof(address)) < 0) {
        std::cerr << "Error: Failed to bind socket.\n";
        close(server_fd);
        return 1;
    }

    if (listen(server_fd, SOMAXCONN) < 0) {
        std::cerr << "Error: Failed to listen on socket.\n";
        close(server_fd);
        return 1;
    }

    std::cout << "Server is listening on port 8080...\n";

    while (true) {
        int client_fd = accept(server_fd, nullptr, nullptr);
        if (client_fd != -1) {
            // Here you can handle the client connection
            // For now, we'll just close it immediately
            close(client_fd);
        } else {
            std::cerr << "Error: Failed to accept client connection.\n";
        }
    }

    close(server_fd);
    return 0;
}
