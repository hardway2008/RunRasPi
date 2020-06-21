/*
 * @Date: 2020-06-20 08:47:54
 * @LastEditors: jlwang
 * @LastEditTime: 2020-06-20 09:20:19
 */ 
#include "lru_cache.h"
#include <cstdint>
#include <iostream>

int32_t main(){
    LRUCache cache(5);

    cache.put(1, 1);
    int32_t index = 1;
    std::cout << cache.get(index) << std::endl;
    // index = 3;
    // std::cout << cache.get(index) << std::endl;

    return 0;
}