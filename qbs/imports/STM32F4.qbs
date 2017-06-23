import qbs

Product {
    Depends { name: "cpp" }

    cpp.positionIndependentCode: false
    type: "application"

    cpp.assemblerFlags: [
        "-g", "-ggdb3",
        "-mcpu=cortex-m4", "-mthumb",
        "-mfloat-abi=hard", "-mfpu=fpv4-sp-d16"
    ]
    cpp.commonCompilerFlags: [
        "-Wall",
        "-Wextra",
        "-Wshadow",
        "-ffunction-sections",
        "-fdata-sections",
        "-g", "-ggdb3",
        "-mcpu=cortex-m4", "-mthumb",
        "-mfloat-abi=hard", "-mfpu=fpv4-sp-d16",
        "-Og",
        "-DNDEBUG"
    ]
    cpp.cFlags: [
        "-Wstrict-prototypes",
        "-std=gnu99"
    ]
    cpp.cxxFlags: [
        "-std=gnu++14",
        "-fno-rtti",
        "-fno-exceptions"
    ]
    cpp.linkerFlags: [
        "-Wl,-T/home/roman/git/NeuroFMU/output/STM32F427VI.ld",
        "-g",
        "-mcpu=cortex-m4", "-mthumb",
        "-mfloat-abi=hard", "-mfpu=fpv4-sp-d16"
    ]
}
