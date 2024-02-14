#ifndef OBJECT_POOL
#define OBJECT_POOL


#include "Order.h"
#include <queue>

namespace Amtal {

template<typename T>
class ObjectPool {

public:

  ObjectPool* get_instance();

  Order* get_resource();
  

private:

  static ObjectPool* instance;
  int limit;


};
}

#endif 