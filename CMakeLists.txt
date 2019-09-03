cmake_minimum_required(VERSION 3.1)
project(running_raspberry)
set(SOURCES
${PROJECT_SOURCE_DIR}/src/main.cc
)
add_executable(${PROJECT_NAME} ${SOURCES})