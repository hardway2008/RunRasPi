/*
 * @Date: 2020-02-17 22:57:35
 * @LastEditors  : jlwang
 * @LastEditTime : 2020-02-17 22:59:43
 */
#include <iostream>
#include <thread>

void hello()
{
    std::cout<<"Hello Concurrent World\n";
}

int main()
{
    std::thread t(hello);
    t.join();
}
