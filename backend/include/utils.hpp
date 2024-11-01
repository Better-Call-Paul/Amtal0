#ifndef UTILS_HPP
#define UTILS_HPP

#include <string>
#include <vector>
#include <iomanip>
#include <iostream>
#include <chrono>
#include <fstream>
#include <random>
#include <thread>


namespace Amtal {

// return system time in milliseconds: yyyy/mm/dd hh:mm::ss:ms
string get_time() {
    auto now = std::chrono::system_clock::now();
    std::time_t now_c = std::chrono::system_clock::to_time_t(now);

    std::tm now_time = *std::localtime(&now_c);

    stringstream ss;
    ss << std::put_time(&now_time, "%Y-%m-%d %H:%M:%S");

    auto milli = std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()) % 1000;
    ss << '.' << std::setfill('0') << std::setw(3) << milli.count();

    return ss.str();
}





}

#endif 