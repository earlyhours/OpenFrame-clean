#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/openframe-native-validation-20261026/codec-build"
root=$PWD
export PATH="$root/sysroot/usr/bin:$PATH"
export LD_LIBRARY_PATH="$root/prefix/lib:$root/sysroot/usr/lib/x86_64-linux-gnu"
export PKG_CONFIG_PATH="$root/prefix/lib/pkgconfig:$root/sysroot/usr/lib/x86_64-linux-gnu/pkgconfig:$root/sysroot/usr/share/pkgconfig"
export ACLOCAL_PATH="$root/sysroot/usr/share/aclocal"
export PYTHONPATH="$root/sysroot/usr/lib/python3/dist-packages"
export CMAKE_PREFIX_PATH="$root/prefix:$root/sysroot/usr"
export CPPFLAGS="-I$root/prefix/include -I$root/sysroot/usr/include"
export LDFLAGS="-L$root/prefix/lib -L$root/sysroot/usr/lib/x86_64-linux-gnu -Wl,-rpath,$root/prefix/lib"
ln -sf pkgconf sysroot/usr/bin/pkg-config
cd sources/libraw
autoreconf --install
./configure --prefix="$root/prefix" --disable-examples
make -j2
make install
cd ../libde265-1.1.3
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="$root/prefix" -DCMAKE_INSTALL_LIBDIR=lib -DENABLE_SDL=OFF -DENABLE_DECODER=OFF -DENABLE_ENCODER=OFF -DBUILD_SHARED_LIBS=ON
cmake --build build -j2
cmake --install build
cd ../libheif
cmake --preset=release-noplugins -S . -B build -DCMAKE_INSTALL_PREFIX="$root/prefix" -DCMAKE_INSTALL_LIBDIR=lib -DWITH_DAV1D=ON -DWITH_AOM_DECODER=OFF -DWITH_AOM_ENCODER=ON -DWITH_X265=OFF -DWITH_EXAMPLES=OFF -DLIBDE265_INCLUDE_DIR="$root/prefix/include" -DLIBDE265_LIBRARY="$root/prefix/lib/libde265.so" -DWITH_LIBSHARPYUV=ON -DENABLE_PARALLEL_TILE_DECODING=ON
cmake --build build -j2
cmake --install build
cd ../jpegli
for patchfile in "$root"/jpegli-patches/*.patch; do
 if git apply --check "$patchfile"; then git apply "$patchfile"; else git apply --reverse --check "$patchfile"; fi
done
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="$root/prefix" -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DJPEGLI_ENABLE_DOXYGEN=OFF -DJPEGLI_ENABLE_MANPAGES=OFF -DJPEGLI_ENABLE_BENCHMARK=OFF -DJPEGLI_ENABLE_TOOLS=OFF -DJPEGLI_ENABLE_DEVTOOLS=OFF -DJPEGLI_ENABLE_FUZZERS=OFF -DJPEGLI_ENABLE_JNI=OFF -DJPEGLI_ENABLE_OPENEXR=OFF -DJPEGLI_ENABLE_SJPEG=OFF -DJPEGLI_ENABLE_SKCMS=OFF -DJPEGLI_FORCE_SYSTEM_LCMS2=ON -DJPEGLI_ENABLE_JPEGLI_LIBJPEG=ON -DJPEGLI_INSTALL_JPEGLI_LIBJPEG=ON -DJPEGLI_ENABLE_HWY_AVX3=ON -DJPEGLI_ENABLE_HWY_AVX3_ZEN4=ON -DJPEGLI_ENABLE_HWY_SVE=OFF -DJPEGLI_ENABLE_HWY_SVE2=OFF -DJPEGLI_ENABLE_HWY_SVE2_128=ON -DJPEGLI_LIBJPEG_LIBRARY_SOVERSION=62 -DJPEGLI_LIBJPEG_LIBRARY_VERSION=62.3.0 -DLIBJPEG_TURBO_VERSION_NUMBER=2001005
cmake --build build -j2
cmake --install build
# Jpegli's bundled Highway installs an empty pkg-config version from its parent project.
sed -i 's/^Version: $/Version: 1.3.0/' "$root/prefix/lib/pkgconfig/"libhwy*.pc
# Use the bundled Highway headers with its matching static library.
rm -rf -- "$root/sysroot/usr/include/hwy"
mkdir -p "$root/prefix/lib/pkgconfig"
cat > "$root/prefix/lib/pkgconfig/libjpeg.pc" <<EOF
prefix=$root/prefix
libdir=\${prefix}/lib
includedir=\${prefix}/include
Name: libjpeg
Description: Pinned upstream jpegli libjpeg ABI 62
Version: 2.1.5
Libs: -L\${libdir} -ljpeg
Cflags: -I\${includedir}
EOF
cd ../libvips
patchfile="$root/libvips-patches/0001-put-other-loaders-ahead-of-dcrawload.patch"
if git apply --check "$patchfile"; then git apply "$patchfile"; else git apply --reverse --check "$patchfile"; fi
export CFLAGS="$CPPFLAGS"
export CXXFLAGS="$CPPFLAGS"
meson setup --reconfigure build --buildtype=release --prefix="$root/prefix" --libdir=lib -Dintrospection=disabled -Dtiff=disabled
ninja -C build -j2
ninja -C build install
