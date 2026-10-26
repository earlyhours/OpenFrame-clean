#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/openframe-native-validation-20261026"
root="$PWD/codec-build"
source ./run-env
export LD_LIBRARY_PATH="$root/prefix/lib:$root/sysroot/usr/lib/x86_64-linux-gnu"
link="$PWD/app/server/node_modules/sharp"
[[ -L "$link" && -d "$root/sharp-native" ]]
original=$(readlink "$link")
trap 'ln -sfn -- "$original" "$link"' EXIT
ln -sfn -- "$root/sharp-native" "$link"
status=0
node app/server/test/benchmarks/native-codecs.mjs logs/codecs-source-build.json \
  samples/IMG_2682.heic samples/EOS_30D.CR2 samples/10bit-HDR-P3-nclx.avif || status=$?
app/scripts/native/openframe doctor || status=1
ldd "$root/prefix/lib/libvips.so" > logs/codecs-source-build-libraries.txt
exit "$status"
