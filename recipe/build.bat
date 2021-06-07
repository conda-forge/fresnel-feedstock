setlocal EnableDelayedExpansion

set "CMAKE_PATH_PREFIX=%PREFIX%"

:: Configure
cmake ../ ^
      -B build ^
      -S .
      -G "Ninja" ^
      -DENABLE_EMBREE=on ^
      -DENABLE_OPTIX=off
if errorlevel 1 exit 1

:: Compile
cmake --build build
if errorlevel 1 exit 1

cmake --install build
if errorlevel 1 exit 1
