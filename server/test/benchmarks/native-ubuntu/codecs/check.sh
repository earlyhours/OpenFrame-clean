#!/usr/bin/env bash
set -euo pipefail
cd "$HOME/openframe-native-validation-20261026"
root="$PWD/codec-build"
source ./run-env
export LD_LIBRARY_PATH="$root/prefix/lib:$root/sysroot/usr/lib/x86_64-linux-gnu"
export MAGICK_CONFIGURE_PATH="$root/prefix/etc/ImageMagick-7"
link="$PWD/app/server/node_modules/sharp"
[[ -L "$link" && -d "$root/sharp-native" ]]
original=$(readlink "$link")
trap 'ln -sfn -- "$original" "$link"' EXIT
ln -sfn -- "$root/sharp-native" "$link"
node -e 'process.stdout.write(JSON.stringify(require("./app/server/node_modules/sharp").format, null, 2) + "\n")' > logs/codecs-source-formats.json
status=0
cmp -- "$root/policy.xml" "$root/prefix/etc/ImageMagick-7/policy.xml"
"$root/prefix/bin/magick" -list policy > logs/codec-policy-list.txt
grep -Fq "Path: $root/prefix/etc/ImageMagick-7/policy.xml" logs/codec-policy-list.txt
if "$root/prefix/bin/magick" label:OpenFrame null: > logs/codec-policy-denial.log 2>&1; then
 echo 'ImageMagick accepted a forbidden LABEL coder' >&2
 exit 1
fi
node app/server/test/benchmarks/native-codecs.mjs logs/codecs-source-build.json \
  samples/IMG_2682.heic samples/EOS_30D.CR2 samples/10bit-HDR-P3-nclx.avif || status=$?
app/scripts/native/openframe doctor || status=1
ldd "$root/prefix/lib/libvips.so" > logs/codecs-source-build-libraries.txt
python3 "$root/smoke.py" || status=1
exit "$status"
