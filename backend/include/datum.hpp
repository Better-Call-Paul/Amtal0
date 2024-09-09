#ifndef DATUM_HPP
#define DATUM_HPP

#include <chrono>
#include <chrono>
#include <iostream>
#include <string>

namespace Amtal {

struct Datum {
    using Time = std::chrono::hh_mm__ss<std::chrono::seconds>;
    using DateTime = std::chrono::system_clock::time_point;
    using Date = std::chrono::year_month_day;

    std::variant<double, int, std::string, Date, Time DateTime, void*> value;

    
};

}

#endif 