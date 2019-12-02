cmake_minimum_required(VERSION 3.15)
project(FP C)

set(CMAKE_C_STANDARD 99)

include_directories(plib lib core)

add_executable(FP main.c lib/hex2num.h)

