cmake_minimum_required(VERSION 3.0)

project(HelloApps,C++)

include_directories(HelloLib/inc)

add_subdirectory(HelloApp)
add_subdirectory(HelloLib)
