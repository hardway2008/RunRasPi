cmake_minimum_required(VERSION 3.1)
project(run_str C CXX)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -ggdb")
set(SOURCES
${PROJECT_SOURCE_DIR}/lru_cache.cpp
)
add_executable(${PROJECT_NAME} ${SOURCES})