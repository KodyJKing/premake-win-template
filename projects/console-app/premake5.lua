project "console-app"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    flags { "MultiProcessorCompile" }

    links { "mylib" }

    files { "src/**.h", "src/**.cpp" }
    includedirs { "src", "../mylib/src" }

    pchsource "src/pch.cpp"
    forceincludes "pch.h"
    pchheader "pch.h"

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
