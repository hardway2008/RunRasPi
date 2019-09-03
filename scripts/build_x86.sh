### 
# @Date: 2019-09-04 01:26:29
 # @LastEditors: jlwang
 # @LastEditTime: 2019-09-04 01:36:55
 ###
cd ..;
mkdir build_x86 && cd build_x86;
cmake .. && make;
cd ..;
mkdir bin && cp build_x86/running_raspberry bin/