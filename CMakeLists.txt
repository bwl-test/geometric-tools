cmake_minimum_required(VERSION 3.12)

project(geometric-tools-test LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD 17)

include(ExternalProject)
include(vendor/vendor.cmake)

add_subdirectory(mathematic)