#include "core/Order.h"



namespace Amtal {

    Order::Order(int orderId, time_t timestamp, OrderType type, int volume, double price, std::string client_id) : 
    orderId(orderId), timestamp(timestamp), type(type), volume(volume), price(price), client_id(client_id) {

    }

    Order::~Order() {

    }

    void Order::set_timestamp ()  {
        std::chrono::system_clock::time_point now = std::chrono::system_clock::now();
        time_t curr_time = std::chrono::system_clock::to_time_t(now);
        timestamp = curr_time;
    }

}