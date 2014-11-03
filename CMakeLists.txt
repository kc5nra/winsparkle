cmake_minimum_required(VERSION 2.8.12)

project(winsparkle)

if(NOT CMAKE_BUILD_TYPE)
        set(CMAKE_BUILD_TYPE RelWithDebInfo)
endif()

add_subdirectory(3rdparty)

add_definitions(
	-D_CRT_SECURE_NO_WARNINGS
	-DXML_STATIC
	-DBUILDING_WIN_SPARKLE
	-DUNICODE)

include_directories(SYSTEM
	include
	3rdparty/expat/lib
	3rdparty/wxWidgets_setup_h
	3rdparty/wxWidgets/include)

set(winsparkle_HEADERS
    src/appcast.h
    src/appcontroller.h
    src/download.h
    src/error.h
    src/settings.h
    src/threads.h
    src/ui.h
    src/updatechecker.h
    src/updatedownloader.h
    src/utils.h)

set(winsparkle_SOURCES
    src/appcast.cpp
    src/appcontroller.cpp
    src/dll_api.cpp
    src/dllmain.cpp
    src/download.cpp
    src/error.cpp
    src/settings.cpp
    src/threads.cpp
    src/ui.cpp
    src/updatechecker.cpp
    src/updatedownloader.cpp

    src/winsparkle.rc)

add_library(WinSparkle
	${winsparkle_SOURCES}
	${winsparkle_HEADERS})

target_link_libraries(WinSparkle
	expat
	wx
	comctl32.lib
	kernel32.lib
	user32.lib
	comctl32.lib
	rpcrt4.lib
	version.lib
	wininet.lib)