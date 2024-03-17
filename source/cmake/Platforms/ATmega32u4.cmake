include_guard()

add_compile_definitions(
    "F_CPU=16000000L"
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
    "-Wl,--defsym=__TEXT_REGION_LENGTH__=28k"
    "-Wl,--defsym=__DATA_REGION_LENGTH__=2560"
    "-Wl,--defsym=__EEPROM_REGION_LENGTH__=1k"
)
