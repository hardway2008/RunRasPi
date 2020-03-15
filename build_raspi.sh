### 
# @Date: 2019-09-04 01:26:29
 # @LastEditors: jlwang
 # @LastEditTime: 2019-09-04 01:36:55
 ###

mkdir build_raspi && cd build_raspi;
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/pi_toolchain.cmake  .. && make;