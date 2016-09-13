cmake_minimum_required(VERSION 3.0)

project(HelloApps,C++)

message(STATUS "XX=" ${CMAKE_CXX_COMPILE_FEATURES})

set(CMAKE_BUILD_TYPE Debug)

add_compile_options(-v)

include_directories(HelloLib/inc)

add_subdirectory(HelloApp)
add_subdirectory(HelloLib)
