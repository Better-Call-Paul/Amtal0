#include <gtest/gtest.h>
#include "core/Order.h"

namespace Amtal {

class OrderTest : public ::testing::Test {
  protected:
    Order* order;
    const int orderId = 1;
    const time_t timestamp = std::time(nullptr);
    const OrderType type = OrderType::BUY;
    const int volume = 100;
    const double price = 2000;
    const std::string client_id = "008";

  void SetUp() override {
    order = new Order(orderId, timestamp, type, volume, price, client_id);
  }

  void TearDown() override {
    delete order;
  }

};

TEST_F(OrderTest, ConstructorTest) {
  
}
  
}