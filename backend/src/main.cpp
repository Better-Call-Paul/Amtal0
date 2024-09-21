#include "data_client.hpp"
#include <iostream>
#include <iomanip>
#include <cstdlib>
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


    
    Amtal::Datum d(1);
    d.log_datum();
    
    int server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd == -1) return 1;

    sockaddr_in address{};
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(8080);

    if (bind(server_fd, (sockaddr*)&address, sizeof(address)) < 0) return 1;

    if (listen(server_fd, SOMAXCONN) < 0) return 1;

    while (true) {
        int client_fd = accept(server_fd, nullptr, nullptr);
        if (client_fd != -1) {
            close(client_fd);
        }
    }

    return 0;
}