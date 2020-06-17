/*
 * @Date: 2020-06-13 18:27:05
 * @LastEditors: jlwang
 * @LastEditTime: 2020-06-14 17:04:38
 */ 


#include <string>
#include <iostream>
 
void print(std::string::size_type n, std::string const &s)
{
    if (n == std::string::npos) {
        std::cout << "not found\n";
    } else {
        std::cout << "found: " << s.substr(n) << " " << n << '\n';
    }
}
 
int main()
{
    std::string::size_type n;
    std::string const s = "This is a string his!";
 
    // // search from beginning of string
    // n = s.find("is");
    // print(n, s);
    size_t index = 0;
    index = s.find("is", index);
    std::cout << "index:" << index << std::endl;
    index = s.find("is", index+1);
    std::cout << "index:" << index << std::endl;
    index = s.find("is", index+1);
    std::cout << "index:" << index << std::endl;    
    index = s.find("is", index+1);
    std::cout << "index:" << index << std::endl; 

    // search from position 5
    n = s.find("is", 5);
    print(n, s);

    // search from position 6
    n = s.find("is", 6);
    print(n, s);

    n = s.find("is", 4);
    print(n, s);

}