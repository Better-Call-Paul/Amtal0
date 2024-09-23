#ifndef DATUM_HPP
#define DATUM_HPP

#include <iostream>
#include <string>
#include <chrono>
#include <type_traits>
#include <utility>
#include <ctime>
#include <tuple>

namespace Amtal {

// Forward declaration of Visitor
struct Visitor;

// Custom compile-time optimized variant
template <typename... Types>
class FastVariant {
private:
    static constexpr std::size_t data_size = std::max({sizeof(Types)...});
    static constexpr std::size_t data_align = std::max({alignof(Types)...});

    using storage_t = std::aligned_storage_t<data_size, data_align>;
    storage_t data;
    std::size_t type_index;

    template <typename T>
    static constexpr std::size_t index_of() {
        return index_of_impl<T, Types...>();
    }

    template <typename T, typename First, typename... Rest>
    static constexpr std::size_t index_of_impl() {
        if constexpr (std::is_same_v<T, First>) {
            return 0;
        } else {
            static_assert(sizeof...(Rest) > 0, "Type not found in Variant");
            return 1 + index_of_impl<T, Rest...>();
        }
    }

public:
    FastVariant() = delete; // No default constructor

    // Copy constructor
    FastVariant(const FastVariant& other) : type_index(other.type_index) {
        other.visit([this](const auto& value) {
            using T = std::decay_t<decltype(value)>;
            new (&data) T(value);
        });
    }

    // Move constructor
    FastVariant(FastVariant&& other) noexcept : type_index(other.type_index) {
        other.visit([this](auto& value) {
            using T = std::decay_t<decltype(value)>;
            new (&data) T(std::move(value));
        });
    }

    // Templated constructor for types
    template <typename T>
    FastVariant(const T& value) {
        static_assert((std::is_same_v<T, Types> || ...), "Type not in Variant");
        new (&data) T(value);
        type_index = index_of<T>();
    }

    // Destructor
    ~FastVariant() {
        visit([](auto& value) {
            using T = std::decay_t<decltype(value)>;
            value.~T();
        });
    }

    // Copy assignment
    FastVariant& operator=(const FastVariant& other) {
        if (this != &other) {
            this->~FastVariant();
            type_index = other.type_index;
            other.visit([this](const auto& value) {
                using T = std::decay_t<decltype(value)>;
                new (&data) T(value);
            });
        }
        return *this;
    }

    // Move assignment
    FastVariant& operator=(FastVariant&& other) noexcept {
        if (this != &other) {
            this->~FastVariant();
            type_index = other.type_index;
            other.visit([this](auto& value) {
                using T = std::decay_t<decltype(value)>;
                new (&data) T(std::move(value));
            });
        }
        return *this;
    }

    // Visit function for non-const visitor
    template <typename VisitorType>
    void visit(VisitorType&& visitor) {
        visit_impl(*this, std::forward<VisitorType>(visitor), std::make_index_sequence<sizeof...(Types)>{});
    }

    // Visit function for const visitor
    template <typename VisitorType>
    void visit(VisitorType&& visitor) const {
        visit_impl(*this, std::forward<VisitorType>(visitor), std::make_index_sequence<sizeof...(Types)>{});
    }

private:
    // visit_impl handles both const and non-const Self
    template <typename Self, typename VisitorType, std::size_t... Is>
    static void visit_impl(Self& self, VisitorType&& visitor, std::index_sequence<Is...>) {
        using func_ptr_t = void(*)(Self&, VisitorType&&);

        static const func_ptr_t table[] = {
            +[](Self& s, VisitorType&& vis) {
                using T = std::tuple_element_t<Is, std::tuple<Types...>>;
                // Preserve constness of Self
                using TPtr = std::conditional_t<std::is_const_v<Self>, const T*, T*>;
                vis(*reinterpret_cast<TPtr>(&s.data));
            }...
        };
        table[self.type_index](self, std::forward<VisitorType>(visitor));
    }
};

// Adjusted Visitor to work with FastVariant
struct Visitor {
    template<typename T>
    void operator()(const T& arg) const {
        (void)arg; // Suppress unused parameter warning
        static_assert(always_false<T>::value, "Unhandled type in Datum::print");
    }

    void operator()(double arg) const {
        std::cout << "double: " << arg << "\n";
    }

    void operator()(int arg) const {
        std::cout << "int: " << arg << "\n";
    }

    void operator()(const std::string& arg) const {
        std::cout << "string: " << arg << "\n";
    }

    void operator()(const std::chrono::year_month_day& arg) const {
        std::cout << "Date: " << static_cast<int>(arg.year()) << '-'
                  << static_cast<unsigned>(arg.month()) << '-'
                  << static_cast<unsigned>(arg.day()) << "\n";
    }

    void operator()(const std::chrono::hh_mm_ss<std::chrono::seconds>& arg) const {
        std::cout << "Time: " << std::chrono::duration_cast<std::chrono::seconds>(arg.to_duration()).count() << " seconds\n";
    }

    void operator()(const std::chrono::system_clock::time_point& arg) const {
        std::time_t time = std::chrono::system_clock::to_time_t(arg);
        std::cout << "DateTime: " << std::ctime(&time);
    }

    void operator()(void* arg) const {
        std::cout << "Pointer: " << arg << "\n";
    }

private:
    template<typename T>
    struct always_false : std::false_type {};
};

struct Datum {
    using Time = std::chrono::hh_mm_ss<std::chrono::seconds>;
    using DateTime = std::chrono::system_clock::time_point;
    using Date = std::chrono::year_month_day;

    using VariantType = FastVariant<double, int, std::string, Time, Date, DateTime, void*>;

    VariantType value;

    explicit Datum(double d) : value(d) {}
    explicit Datum(int i) : value(i) {}
    explicit Datum(const std::string& s) : value(s) {}
    explicit Datum(const char* s) : value(std::string(s)) {}
    explicit Datum(Time t) : value(t) {}
    explicit Datum(Date d) : value(d) {}
    explicit Datum(DateTime dt) : value(dt) {}
    explicit Datum(void* p) : value(p) {}

    void log_datum() const {
        value.visit(Visitor{});
    }
};

} // namespace Amtal

#endif // DATUM_HPP
