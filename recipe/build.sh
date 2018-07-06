mkdir -p build_conda
cd build_conda

export TBB_LINK=${PREFIX}/lib

cmake ../ \
      -DCMAKE_INSTALL_PREFIX=${SP_DIR} \
      -DPYTHON_EXECUTABLE=${PYTHON} \
      -Dembree_DIR=${PREFIX}/lib/cmake/embree-3.2.0 \
      -DENABLE_EMBREE=on \
      -DENABLE_OPTIX=off

make install
