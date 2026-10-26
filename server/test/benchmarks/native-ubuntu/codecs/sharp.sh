#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/openframe-native-validation-20261026"
root="$PWD/codec-build"
exec 9>"$root/build.lock"
flock -n 9 || { echo 'Another native codec operation is running' >&2; exit 1; }
export PATH="$PWD/local/node-v24.13.1-linux-x64/bin:$root/sysroot/usr/bin:$PATH"
export LD_LIBRARY_PATH="$root/prefix/lib:$root/sysroot/usr/lib/x86_64-linux-gnu"
export PKG_CONFIG_PATH="$root/prefix/lib/pkgconfig:$root/sysroot/usr/lib/x86_64-linux-gnu/pkgconfig:$root/sysroot/usr/share/pkgconfig"
export SHARP_FORCE_GLOBAL_LIBVIPS=1
export npm_config_devdir="$root/node-gyp"
export XDG_CACHE_HOME="$root/cache"
export NODE_PATH="$PWD/app/node_modules/.pnpm/node-gyp@13.1.0/node_modules:$PWD/app/node_modules/.pnpm/node-addon-api@8.9.2/node_modules"
mkdir -p "$root/bin"
ln -sfn "$PWD/app/node_modules/.pnpm/node-gyp@13.1.0/node_modules/node-gyp/bin/node-gyp.js" "$root/bin/node-gyp"
export PATH="$root/bin:$PATH"
original=$(readlink -f app/server/node_modules/sharp)
if [[ ! -d "$root/sharp-native" ]]; then
 mkdir "$root/sharp-native"
 cp -a "$original"/. "$root/sharp-native/"
 rm -rf "$root/sharp-native/node_modules"

fi
if [[ -L "$root/sharp-native/node_modules" ]]; then rm -- "$root/sharp-native/node_modules"; fi
mkdir -p "$root/sharp-native/node_modules"
for dependency in "$original"/node_modules/*; do
 ln -sfn -- "$dependency" "$root/sharp-native/node_modules/$(basename "$dependency")"
done
ln -sfn "$PWD/app/node_modules/.pnpm/node-addon-api@8.9.2/node_modules/node-addon-api" "$root/sharp-native/node_modules/node-addon-api"
cd "$root/sharp-native"
node install/build.js
