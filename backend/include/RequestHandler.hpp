#ifndef REQUESTHANDLER_HPP
#define REQUESTHANDLER_HPP

#include <string>
#include <vector>
#include <curl/curl.h>
#include <sstream>
#include <iostream>
#include <nlohmann/json.hpp>
#include "ohlcv.hpp"

namespace Amtal {

class RequestHandler {

public:
    std::string data_api_key;
private:

};

}

#endif