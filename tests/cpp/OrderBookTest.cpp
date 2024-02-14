#include <gtest/gtest.h>
#include "core/OrderBook.h"  
#include "core/Order.h"     
#include <ctime>

namespace Amtal {

class OrderBookTest : public ::testing::Test {
protected:
    OrderBook *orderBook;
    const int top_buy_index = 10000; 
    const int top_sell_index = 10000;
    const int min_tick = 1;
    const int max_range = 1000000;
    const int reference_price = 1000;

    void SetUp() override {
        // Initialize OrderBook with suitable parameters
        orderBook = new OrderBook(top_buy_index, top_sell_index, min_tick, max_range, reference_price);
    }

    void TearDown() override {
        delete orderBook;
    }
};

TEST_F(OrderBookTest, ConstructorTest) {
    EXPECT_FALSE(orderBook->is_empty());
}

TEST_F(OrderBookTest, AddOrderTest) {
    Order buyOrder(1, std::time(nullptr), OrderType::BUY, 50, 1010, "client1");
    Order sellOrder(2, std::time(nullptr), OrderType::SELL, 30, 990, "client2");

    orderBook->add_order(buyOrder);
    EXPECT_EQ(orderBook->getVolumeAtPrice(1010, OrderType::BUY), 50);

    orderBook->add_order(sellOrder);
    EXPECT_EQ(orderBook->getVolumeAtPrice(990, OrderType::SELL), 30);
}

TEST_F(OrderBookTest, CancelOrderTest) {
    Order buyOrder(4, std::time(nullptr), OrderType::BUY, 50, 1010, "client1");
    orderBook->add_order(buyOrder);
    int initialVolume = orderBook->getVolumeAtPrice(1010, OrderType::BUY);

    orderBook->cancel_order(1010, 1, OrderType::BUY);
    int newVolume = orderBook->getVolumeAtPrice(1010, OrderType::BUY);

    EXPECT_EQ(newVolume, initialVolume - 50);
}

TEST_F(OrderBookTest, GetVolumeAtPriceTest) {
    Order buyOrder(1, std::time(nullptr), OrderType::BUY, 50, 1010, "client1");
    orderBook->add_order(buyOrder);
    
    int volume = orderBook->getVolumeAtPrice(1010, OrderType::BUY);
    EXPECT_EQ(volume, 50);
}

TEST_F(OrderBookTest, IsEmptyTest) {
    EXPECT_TRUE(orderBook->is_empty());

    Order buyOrder(1, std::time(nullptr), OrderType::BUY, 50, 1010, "client1");
    orderBook->add_order(buyOrder);

    EXPECT_FALSE(orderBook->is_empty());
}

}  // namespace Amtal
