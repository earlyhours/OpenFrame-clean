#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/openframe-native-validation-20261026"
root="$PWD/codec-build"
export PATH="$PWD/local/node-v24.13.1-linux-x64/bin:$root/sysroot/usr/bin:$PATH"
export LD_LIBRARY_PATH="$root/prefix/lib:$root/sysroot/usr/lib/x86_64-linux-gnu"
export PKG_CONFIG_PATH="$root/prefix/lib/pkgconfig:$root/sysroot/usr/lib/x86_64-linux-gnu/pkgconfig:$root/sysroot/usr/share/pkgconfig"
export SHARP_FORCE_GLOBAL_LIBVIPS=1
export NODE_PATH="$PWD/app/node_modules/.pnpm/node-gyp@13.1.0/node_modules:$PWD/app/node_modules/.pnpm/node-addon-api@8.9.2/node_modules"
original=$(readlink -f app/server/node_modules/sharp)
if [[ ! -d "$root/sharp-native" ]]; then
 mkdir "$root/sharp-native"
 cp -a "$original"/. "$root/sharp-native/"
 rm -rf "$root/sharp-native/node_modules"
 ln -s "$original/node_modules" "$root/sharp-native/node_modules"
fi
cd "$root/sharp-native"
node install/build.js
