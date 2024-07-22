#ifndef DATUM_HPP
#define DATUM_HPP

#include <chrono>
namespace Amtal {

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
}

#endif 