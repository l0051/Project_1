cmake_minimum_required(VERSION 3.13)

project(cmake)

set(CMAKE_CXX_STANDART 14)

add_executable(hello main.cpp lib/hello_world.cpp lib/hello_world.h)
