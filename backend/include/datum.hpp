#ifndef DATUM_HPP
#define DATUM_HPP

#include <chrono>
namespace Amtal {

enum class Side { Ask, Bid, None };
enum class Action { Add, Cancel, Modify, Clear, Trade, Fill };

struct Datum {
    std::chrono::system_clock::time_point d_dateTime;
    uint32_t d_instrumentId;
    double d_price;
    uint32_t d_size;
    Side d_side;
    Action d_action;
    uint64_t d_orderId;
    int64_t d_tsInDelta;
    uint64_t d_tsOut;
    uint16_t d_publisherId;
    uint32_t d_sequence;
};
/*
struct Datum {

    using Time = std::chrono::hh_mm_ss<std::chrono::seconds>;
    using DateTime = std::chrono::system_clock::time_point;
    using Date = std::chrono::year_month_day;

    union {
        double d_value;
        int d_number;
        char* d_string;
        Date d_date;
        Time d_time;
        DateTime d_dateTime;
        void* d_userDefinedType;
    }; 
};
*/
}

#endif 