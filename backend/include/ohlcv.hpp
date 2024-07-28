#ifndef OHLCV_HPP
#define OHLCV_HPP

#include "datum.hpp"

namespace Amtal {

struct OHLCV {
    Datum timestamp;
    Datum open;
    Datum high;
    Datum low;
    Datum close;
    Datum volume;

    OHLCV() {
        timestamp.d_dateTime = std::chrono::system_clock::now();
        open.d_value = 0.0;
        high.d_value = 0.0;
        low.d_value = 0.0;
        close.d_value = 0.0;
        volume.d_number = 0;
    }

    OHLCV(std::chrono::system_clock::time_point ts, double o, double h, double l, double c, int v) {
        timestamp.d_dateTime = ts;
        open.d_value = o;
        high.d_value = h;
        low.d_value = l;
        close.d_value = c;
        volume.d_number = v;
    }
};

}

#endif