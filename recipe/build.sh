export CMAKE_PATH_PREFIX=${PREFIX}

cmake ${CMAKE_ARGS} ../ \
      -DENABLE_EMBREE=on \
      -DENABLE_OPTIX=off \
      -B build \
      -S . \
      -G Ninja

cmake --build build
cmake --install build
