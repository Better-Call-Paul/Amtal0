#ifndef ORDER_H
#define ORDER_H

#include <string>
#include <chrono>
#include <ctime>

namespace Amtal {


enum class OrderType {
    /* To implement
    Buy Orders (Long Positions)
    Sell Orders (Short Positions)
    Limit Orders
    Buy Limit Order
    Sell Limit Order
    Market Orders
    Stop Orders
    Stop-Loss Order
    Buy Stop Order
    Options
    Call Options
    Put Options
    Stop Limit Orders
    Good 'Til Canceled (GTC) Orders
    Day Orders
    Iceberg Orders
    */
    BUY,
    SELL,
    CALL, 
    PUT
};

class Order {

public:

    Order(int orderId, time_t timestamp, OrderType type, int volume, double price, std::string client_id);
    ~Order();

    inline OrderType get_type() const { return type; }
    inline int get_volume() const { return volume; }
    inline double get_price() const { return price; }
    inline int get_order_id() const { return orderId; }
    inline std::string get_clientId() const { return client_id; }

    // Inline non-const member functions
    inline void set_client_id(std::string new_client_Id) { client_id = std::move(new_client_Id); }
    inline void set_orderId(int new_orderID) { orderId = new_orderID; }
    inline void set_volume(int new_volume) { volume = new_volume; }
    inline void set_type(OrderType new_type) { type = new_type; }
    inline  void set_price(double new_price) { price = new_price; }
    void set_timestamp();


private:

    int orderId;
    time_t timestamp;
    OrderType type;
    int volume;
    double price;
    std::string client_id;


};
}

#endif 