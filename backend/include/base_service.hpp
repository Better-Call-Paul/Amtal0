#ifndef BASE_SERVICE_HPP
#define BASE_SERVICE_HPP

#include <vector>
#include <fstream>

namespace Amtal {

template<typename T> 
class Service_Listener {

public:

    virtual void process_add(T &data) = 0;

    virtual void process_remove(T &data) = 0;

    virtual void process_update(T &data) = 0;

};

template<typename T, typename K>
class Service {

public:

    virtual K& get_data(T key) = 0;

    virtual void on_message(K& data) = 0;

    virtual void add_listener(Service_Listener<K> *listener) = 0;

    virtual const std::vector<Service_Listener<K> *>& get_listeners() const = 0;
};

template<typename T>
class Connector {

public:

    virtual void publish(T &data) = 0;
};

}

#endif