setlocal EnableDelayedExpansion

set "CMAKE_PATH_PREFIX=%PREFIX%"

:: Configure
cmake ../ ^
      -B build ^
      -S .
      -G "NMake Makefiles" ^
      -DENABLE_EMBREE=on ^
      -DENABLE_OPTIX=off
if errorlevel 1 exit 1

:: Compile
nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
