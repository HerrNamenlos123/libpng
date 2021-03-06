
project "libpng"
	language "C++"
	kind "StaticLib"
	targetname "libpng"
	targetdir "bin"
	staticruntime "on"
	runtime "Release"
	symbols "On"
	location "build"

	system "Windows"
	architecture "x86_64"

	includedirs { "include", "../zlib/include" }
	defines { "NDEBUG", "PNG_SETJMP_NOT_SUPPORTED", "WIN32_LEAN_AND_MEAN", "_CRT_SECURE_NO_WARNINGS" }

	files {
		"include/**",
		"src/**",
		"premake5.lua"
	}

	excludes {
		"src/pngtest.c"
	}

	LIBPNG_INCLUDE_DIRS = { _SCRIPT_DIR .. "/include", _SCRIPT_DIR .. "/../zlib/include" }
	LIBPNG_LINK_DIRS = { _SCRIPT_DIR .. "/bin/" }
	LIBPNG_LINKS = { "libpng" }
