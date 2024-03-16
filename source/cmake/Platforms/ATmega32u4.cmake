include_guard()

add_compile_definitions(
    "F_CPU=16000000"
)

add_compile_options(
    "-mmcu=atmega32u4"
    "-fno-exceptions"
    "-fno-rtti"
    "-fdata-sections"
    "-ffunction-sections"
    "-Wall"
    "-Wextra"
    "-Werror"
    "-pedantic-errors"
)

add_link_options(
    "-mmcu=atmega32u4"
    "-Wl,--gc-sections"
)
