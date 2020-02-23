cmake_minimum_required(VERSION 3.1)
project(tmpl_basic)
set(SOURCES
    ${PROJECT_SOURCE_DIR}/main.cpp
    ${PROJECT_SOURCE_DIR}/addvalue.hpp
)
add_executable(${PROJECT_NAME} ${SOURCES})