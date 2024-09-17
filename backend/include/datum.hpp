#ifndef DATUM_HPP
#define DATUM_HPP

#include <iostream>
#include <variant>
#include <string>
#include <chrono>

namespace Amtal {

// Define Visitor first
struct Visitor {

    // General template to handle unexpected types
    template<typename T>
    void operator()(const T& arg) const {
        (void)arg; // Suppress unused parameter warning
        static_assert(always_false<T>::value, "Unhandled type in Datum::print");
    }

    // Specialization for double
    void operator()(const double& arg) const {
        std::cout << "double: " << arg << "\n";
    }

    // Specialization for int
    void operator()(const int& arg) const {
        std::cout << "int: " << arg << "\n";
    }

    // Specialization for std::string
    void operator()(const std::string& arg) const {
        std::cout << "string: " << arg << "\n";
    }

    // Specialization for Date (year_month_day)
    void operator()(const std::chrono::year_month_day& arg) const {
        std::cout << "Date: " << static_cast<int>(arg.year()) << '-' 
                  << static_cast<unsigned>(arg.month()) << '-' 
                  << static_cast<unsigned>(arg.day()) << "\n";
    }

    // Specialization for Time (hh_mm_ss)
    void operator()(const std::chrono::hh_mm_ss<std::chrono::seconds>& arg) const {
        std::cout << "Time: " << std::chrono::duration_cast<std::chrono::seconds>(arg.to_duration()).count() << " seconds\n";
    }

    // Specialization for DateTime (system_clock::time_point)
    void operator()(const std::chrono::system_clock::time_point& arg) const {
        std::time_t time = std::chrono::system_clock::to_time_t(arg);
        std::cout << "DateTime: " << std::ctime(&time); // Convert to readable format
    }

    // Specialization for void*
    void operator()(void* const& arg) const {
        std::cout << "Pointer: " << arg << "\n";
    }

private:
    // Template to check for unhandled types at compile time
    template<typename T>
    struct always_false : std::false_type {};
};

// Define Datum after Visitor
struct Datum {
    using Time = std::chrono::hh_mm_ss<std::chrono::seconds>;
    using DateTime = std::chrono::system_clock::time_point;
    using Date = std::chrono::year_month_day;

    std::variant<double, int, std::string, Time, Date, DateTime, void*> value;

    explicit Datum(double d) : value(d) {}
    explicit Datum(int i) : value(i) {}
    explicit Datum(std::string s) : value(s) {}
    explicit Datum(Time t) : value(t) {}
    explicit Datum(Date d) : value(d) {}
    explicit Datum(DateTime dt) : value(dt) {}

    void log_datum() const {
        std::visit(Visitor{}, value); // Uses Visitor here
    }
};

} // namespace Amtal

#endif // DATUM_HPP