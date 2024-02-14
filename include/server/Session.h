#ifndef SESSION_H
#define SESSION_H

#include "asio.hpp"
#include <memory>

using asio::ip::tcp;


namespace Amtal {

class Session : public std::enable_shared_from_this<Session> {

public:

    explicit Session(tcp::socket socket);
    void start();

private:

    void read();
    void write(std::size_t length);

    tcp::socket socket_;
    std::array<char, 1024> buffer_;
};
}

#endif 