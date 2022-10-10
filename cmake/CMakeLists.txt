cmake_minimum_required(VERSION 3.13)

project(cmake_)

set(CMAKE_CXX_STANDART 14)

add_executable(exec main.cpp lib/foo.cpp lib/foo.h)
