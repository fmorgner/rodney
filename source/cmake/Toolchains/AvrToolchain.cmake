include_guard()

#[=====[ Core CMake Toolchain Setup ]=====]

set(CMAKE_SYSTEM_NAME "Generic")
set(CMAKE_SYSTEM_PROCESSOR "avr")
set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")

find_program(CMAKE_C_COMPILER "avr-gcc" REQUIRED)
find_program(CMAKE_CXX_COMPILER "avr-g++" REQUIRED)
find_program(CMAKE_NM "avr-nm" RQUIRED)
find_program(CMAKE_OBJCOPY "avr-objcopy" REQUIRED)
find_program(CMAKE_OBJDUMP "avr-objdump" REQUIRED)
