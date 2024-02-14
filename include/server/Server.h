#ifndef SERVER_H
#define SERVER_H

#include "asio.hpp"

using asio::ip::tcp;

namespace Amtal {

class Server {

public:
    Server(asio::io_context& io_context, short port);

    void run();

private:
    void accept();

    asio::io_context& io_context_;
    tcp::acceptor acceptor_;


};
}

#endif 