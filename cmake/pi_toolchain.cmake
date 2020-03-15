
# #config
set(PI_SDK_DIR /home/cloud/Mycode/raspberrypi_sdk)

# set(CMAKE_C_COMPILE ${PI_SDK_DIR}/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc)
# set(CMAKE_CXX_COMPILE ${PI_SDK_DIR}/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-g++)
# set(CMAKE_FIND_ROOT_PATH ${PI_SDK_DIR}/rootfs)


SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_VERSION 1)
SET(CMAKE_C_COMPILER ${PI_SDK_DIR}/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER ${PI_SDK_DIR}/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-g++)
SET(CMAKE_FIND_ROOT_PATH ${PI_SDK_DIR}/rootfs)
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

