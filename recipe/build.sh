mkdir -p build_conda
cd build_conda
rm -f CMakeCache.txt

export CMAKE_PATH_PREFIX=${PREFIX}

cmake ../ \
      -DENABLE_EMBREE=on \
      -DENABLE_OPTIX=off

make install

echo "*********"
echo "otool output"
otool -L ${PREFIX}/lib/python*/site-packages/fresnel/_common*.so
echo "*********"

