#include "data_client.hpp"
#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <chrono>
#include <nlohmann/json.hpp>
#include <map>
#include <algorithm>
#include <vector>
#include <unordered_map>
#include <queue>
#include "datum.hpp"

int main() {

    std::ios_base::sync_with_stdio(false);
    std::cin.tie(nullptr);

    Amtal::Datum d(1);
    d.log_datum();

    /*
    curl -G 'https://hist.databento.com/v0/timeseries.get_range' \
    -u db-WnvDYCgcbJTkAWDbJnf3gwy4C876T: \
    -d dataset=GLBX.MDP3 \
    -d symbols=ESM2 \
    -d schema=ohlcv-1s \
    -d start=2022-06-06T14:30 \
    -d end=2022-06-06T14:40 \
    -d encoding=json
    */

    return 0;
}