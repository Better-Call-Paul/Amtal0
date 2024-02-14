#include "server/Session.h"

#include <iostream>

namespace Amtal {

    Session::Session(tcp::socket socket) : socket_(std::move(socket)) {}

    /*
    void Session::start() {
        read();
    }
    
    void Session::read() {
        auto self(shared_from_this());

        socket_.async_read_some(asio::buffer(buffer_), 
            [this, self](const asio::error_code& er, std::size_t length) {
                if (!er) {

                    write(length);
                }
                else {
                    std::cerr << "Read Error: " << er.message() << "\n";
                }
            });

    }
    */
    void write(std::size_t length) {
        
    }
    
}


