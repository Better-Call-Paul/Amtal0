#ifndef ORDER_BOOK_H
#define ORDER_BOOK_H

#include "ObjectPool.h"
#include "Order.h"
#include <string>
#include <vector>
#include <shared_mutex>
#include <list>
#include <utility>
#include <map>
#include <mutex>

namespace Amtal {


class OrderBook {
public:

    OrderBook(int top_buy_index, int top_sell_index, int min_tick, int max_range, int reference_price);
    ~OrderBook();

    void add_order(const Order& order);
    void cancel_order(double price, const int orderId, const OrderType side);
    int getVolumeAtPrice(double price, OrderType type);

    bool is_empty() const;
    


private:
    std::vector<std::list<Order>> BuySide;
    std::vector<std::list<Order>> SellSide;
    mutable std::shared_mutex book_mutex;
    int top_buy_index;
    int top_sell_index;
    int min_tick;
    int max_range;

    std::unordered_map<double, int> sell_volume_map;
    std::unordered_map<double, int> buy_volume_map;

    int reference_price;

}; 
}

#endif 