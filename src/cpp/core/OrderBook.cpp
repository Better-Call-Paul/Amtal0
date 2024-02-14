#include "core/OrderBook.h"


namespace Amtal {


  OrderBook::OrderBook(int top_buy_index, int top_sell_index, int min_tick, int max_range, int reference_price) 
  : top_buy_index(top_buy_index), top_sell_index(top_sell_index), min_tick(min_tick), max_range(max_range), reference_price(reference_price) {
      
      BuySide.resize(max_range);
      SellSide.resize(max_range);
  }

  OrderBook::~OrderBook() {

  }

  void OrderBook::add_order(const Order& order) {
    std::unique_lock lock(book_mutex);

    auto& Book = (order.get_type() == OrderType::BUY) ? BuySide : SellSide;
    auto& volume_map = (order.get_type() == OrderType::BUY) ? buy_volume_map : sell_volume_map;
    int index = static_cast<int>((order.get_price() - reference_price)/min_tick);
    Book[index].push_back(order);
    volume_map[index] += order.get_volume();
  }

  void OrderBook::cancel_order(double price, const int orderId, const OrderType side) {
    // have to get side and volume
    std::unique_lock lock(book_mutex);
    auto& book = (side == OrderType::BUY) ? BuySide : SellSide;
    auto& volume_map = (side == OrderType::BUY) ? buy_volume_map : sell_volume_map;
    
    int removed_volume = -1;
    std::list<Order> target_level = book[price];
    for (auto it = target_level.begin(); it != target_level.end(); it++) {
      if (it->get_order_id() == orderId) {
        removed_volume = it->get_volume();
        target_level.erase(it);
      }
    }

    if (removed_volume != -1) {
      volume_map[price] -= removed_volume;
    }
  }

  int OrderBook::getVolumeAtPrice(double price, OrderType type) {
    std::shared_lock lock(book_mutex);
    try {
      auto& volume_map = (type == OrderType::BUY) ? buy_volume_map : sell_volume_map;
      if (volume_map.find(price) == volume_map.end()) {
        return -1;
      }
      return volume_map[price];
    }
    catch (std::exception& e) {
      return -1;
    }
    
  }

  bool OrderBook::is_empty() const {
    std::shared_lock lock(book_mutex);
    return BuySide.empty() && SellSide.empty() && buy_volume_map.empty() && sell_volume_map.empty();
  }

}
