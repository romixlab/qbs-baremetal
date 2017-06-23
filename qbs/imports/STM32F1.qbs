import qbs

Product {
    Depends { name: "cpp" }

    cpp.positionIndependentCode: false
    type: ["application", "hex", "size"]

    cpp.assemblerFlags: [
        "-g", "-ggdb3",
        "-mcpu=cortex-m3", "-mthumb"
    ]
    cpp.commonCompilerFlags: [
        "-Wall",
        "-Wextra",
        "-Wshadow",
        "-ffunction-sections",
        "-fdata-sections",
        "-g", "-ggdb3",
        "-mcpu=cortex-m3", "-mthumb",
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
        "-Wl,-T" + sourceDirectory + "/../STM32F103RB_FLASH.ld",
        "-g",
        "-mcpu=cortex-m3", "-mthumb",
        "-Wl,--gc-sections",
        "-specs=nano.specs", "-specs=nosys.specs"
    ]
}
