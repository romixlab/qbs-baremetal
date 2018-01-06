import qbs

Product {
    Depends { name: "cpp" }

    property string linkerScriptFile: ""

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
        "-DNDEBUG",


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
        "-T" + linkerScriptFile,
        "--gc-sections"
    ]
    cpp.driverFlags: [
        "--specs=nosys.specs",
        "-nostartfiles"
    ]
}
