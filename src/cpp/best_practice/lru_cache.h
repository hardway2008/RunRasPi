#pragma once

#include <unordered_set>
#include <unordered_map>
#include <list>

//what is linked-hashmap?
//unordered_map is not suitable for sort algo.
//how to use std::list?
//why not use a queue?

struct Node{
    int32_t key;
    int32_t value;
    Node(int ikey, int ivalue):key(ikey), value(ivalue){

    }
};


class LRUCache{
public:
    LRUCache(int capacity){
        capacity_ = capacity;
    }

    //Mix valid value with error code!
    int get(int key){
        if(cache_map_.find(key) != cache_map_.end()){
            return cache_map_.at(key)->value;
        }else{
            return -1;
        }   
    }

    void put(int key, int value){
        if(cache_map_.find(key) != cache_map_.end()){
            int value = ;
            list_.push_back(value);
        }else{
            if(cache_map_.size() >= capacity_){

            }else{

            }
        }
    }

    void Display(){}

private:
    int capacity_;
    std::unordered_map<int32_t, std::list<Node>::iterator> cache_map_;
    std::list<Node> list_;
};

