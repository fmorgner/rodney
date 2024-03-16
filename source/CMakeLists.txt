cmake_minimum_required(VERSION "3.27")

project("rodney"
    VERSION "0.1.0"
    DESCRIPTION "An alternative firmware for the Prusa Research CW1S curing and washing machine"
    LANGUAGES "CXX"
)

include("CheckIPOSupported")

#[=====[ Global Project Configuration ]=====]

set(CMAKE_CXX_STANDARD "20")
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS NO)

check_ipo_supported(LANGUAGES CXX)

#[=====[ Core Firmware Application ]=====]

add_executable("app"
    "app/src/main.cpp"
)

target_link_options("app" PRIVATE
    "-Wl,-print-memory-usage"
)

set_target_properties("app" PROPERTIES
    INTERPROCEDURAL_OPTIMIZATION YES
    SUFFIX ".elf"
)

add_custom_command(TARGET "app"
    POST_BUILD
    COMMAND "${CMAKE_OBJCOPY}"
    ARGS
    "-O"
    "ihex"
    "$<TARGET_FILE:app>"
    "$<TARGET_FILE_DIR:app>/$<TARGET_FILE_BASE_NAME:app>.hex"
    COMMENT "Generating flashable Intel HEX file"
)