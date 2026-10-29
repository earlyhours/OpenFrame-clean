#!/usr/bin/env bash
set -euo pipefail
root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
tmp="$(mktemp -d)"
trap 'rm -rf -- "$tmp"' EXIT
export OPENFRAME_CONFIG="$tmp/config/env" OPENFRAME_STATE="$tmp/state" OPENFRAME_CODECS="$tmp/codecs"
mkdir -p "$OPENFRAME_CODECS/sharp-native" "$OPENFRAME_CODECS/prefix/etc/ImageMagick-7"
printf '{"main":"index.cjs"}\n' > "$OPENFRAME_CODECS/sharp-native/package.json"
touch "$OPENFRAME_CODECS/prefix/etc/ImageMagick-7/policy.xml"
mkdir -p "$tmp/repo/scripts/native" "$tmp/repo/server/bin" "$tmp/repo/server/dist"
cp "$root/scripts/native/openframe" "$tmp/repo/scripts/native/"
cp "$root/server/bin/start.sh" "$root/server/bin/get-cpus.sh" "$tmp/repo/server/bin/"
touch "$tmp/repo/server/dist/main.js"
cli="$tmp/repo/scripts/native/openframe"
bash -n "$cli"
"$cli" --help >/dev/null
if "$cli" doctor >/dev/null 2>&1; then echo 'doctor accepted missing config' >&2; exit 1; fi
"$cli" init >/dev/null
[[ -f "$OPENFRAME_CONFIG" && -d "$OPENFRAME_STATE/media" ]]
[[ "$(stat -c %a "$OPENFRAME_CONFIG")" == 600 ]]
cp "$OPENFRAME_CONFIG" "$tmp/original"
if "$cli" init >/dev/null 2>&1; then echo 'init overwrote configuration' >&2; exit 1; fi
cmp "$OPENFRAME_CONFIG" "$tmp/original"
if "$cli" invalid >/dev/null 2>&1; then echo 'unknown command accepted' >&2; exit 1; fi
mkdir "$tmp/bin"
cat > "$tmp/bin/node" <<'MOCK'
#!/bin/sh
printf '%s\n' "$PWD" "$@" "$IMMICH_MEDIA_LOCATION" "$IMMICH_BUILD_DATA" "$DB_HOSTNAME" "$REDIS_HOSTNAME" > "$OPENFRAME_STATE/invocation"
MOCK
printf '#!/bin/sh\nuname -m\n' > "$tmp/bin/arch"
chmod +x "$tmp/bin/node" "$tmp/bin/arch"
PATH="$tmp/bin:$PATH" "$cli" admin version >/dev/null
grep -Fx "$tmp/repo/server/dist/main.js" "$OPENFRAME_STATE/invocation" >/dev/null
grep -Fx immich-admin "$OPENFRAME_STATE/invocation" >/dev/null
grep -Fx version "$OPENFRAME_STATE/invocation" >/dev/null
grep -Fx "$OPENFRAME_STATE/media" "$OPENFRAME_STATE/invocation" >/dev/null
grep -Fx 127.0.0.1 "$OPENFRAME_STATE/invocation" >/dev/null
printf 'file-secret' > "$tmp/password"
printf '\nDB_PASSWORD_FILE=%q\n' "$tmp/password" >> "$OPENFRAME_CONFIG"
cat > "$tmp/bin/node" <<'MOCK'
#!/usr/bin/env bash
[[ "$DB_PASSWORD" == file-secret && -z "${DB_PASSWORD_FILE:-}" ]]
MOCK
PATH="$tmp/bin:$PATH" "$cli" admin version >/dev/null
echo 'Native CLI self-check passed.'
# Exercise the real Node loader for ESM, CommonJS and inherited worker startup.
printf 'module.exports = { nativeCodecCheck: true };\n' > "$tmp/codecs/sharp-native/index.cjs"
OPENFRAME_CODECS="$tmp/codecs" NODE_OPTIONS="--require $root/scripts/native/codecs.cjs" node <<'JS'
import assert from 'node:assert/strict';
import { createRequire } from 'node:module';
import sharp from 'sharp';
import { Worker } from 'node:worker_threads';
import { once } from 'node:events';
assert.equal(sharp.nativeCodecCheck, true);
assert.equal(createRequire(import.meta.url)('sharp'), sharp);
assert.throws(() => createRequire(import.meta.url)('@img/sharp-linux-x64/sharp.node'), /bundled fallback is disabled/);
const worker = new Worker(new URL("data:text/javascript,import { parentPort } from 'node:worker_threads'; import sharp from 'sharp'; parentPort.postMessage(sharp.nativeCodecCheck)"));
assert.deepEqual(await once(worker, 'message'), [true]);
const commonjsWorker = new Worker("require('node:worker_threads').parentPort.postMessage(require('sharp').nativeCodecCheck)", { eval: true });
assert.deepEqual(await once(commonjsWorker, 'message'), [true]);
JS
printf '\nOPENFRAME_CODECS=%q\n' "$tmp/codecs" >> "$OPENFRAME_CONFIG"
cp "$root/scripts/native/codecs.cjs" "$tmp/repo/scripts/native/"
cat > "$tmp/bin/node" <<'MOCK'
#!/usr/bin/env bash
if [[ "$1" == -p ]]; then exec "$REAL_NODE" "$@"; fi
[[ "$LD_LIBRARY_PATH" == "$OPENFRAME_CODECS/prefix/lib:"* ]]
[[ "$MAGICK_CONFIGURE_PATH" == "$OPENFRAME_CODECS/prefix/etc/ImageMagick-7" ]]
[[ "$NODE_OPTIONS" == *--require*codecs.cjs* ]]
MOCK
REAL_NODE="$(command -v node)" PATH="$tmp/bin:$PATH" "$cli" admin version >/dev/null
rm "$tmp/codecs/sharp-native/package.json"
if REAL_NODE="$(command -v node)" PATH="$tmp/bin:$PATH" "$cli" admin version >/dev/null 2>&1; then
  echo 'admin accepted missing selected codecs' >&2; exit 1
fi
echo 'Native codec selection self-check passed.'
# Check the default build location without downloading or compiling dependencies.
sed -i '/^OPENFRAME_CODECS=/d' "$OPENFRAME_CONFIG"
cat > "$tmp/bin/python3" <<'MOCK'
#!/bin/bash
[[ "$OPENFRAME_CODECS" == "$XDG_DATA_HOME/openframe/codecs" && "$OPENFRAME_SOURCE" == "$EXPECTED_SOURCE" ]]
printf '%s\n' "$1" >> "$OPENFRAME_STATE/codec-build-steps"
if [[ "$1" == */build.sh ]]; then
  mkdir -p "$OPENFRAME_CODECS/prefix/lib" "$OPENFRAME_CODECS/prefix/etc/ImageMagick-7"
  for lib in vips heif de265 jxl raw jpeg tiff hwy; do touch "$OPENFRAME_CODECS/prefix/lib/lib$lib.so"; done
  echo policy > "$OPENFRAME_CODECS/prefix/etc/ImageMagick-7/policy.xml"
fi
MOCK
cp "$tmp/bin/python3" "$tmp/bin/bash"
cat > "$tmp/bin/node" <<'MOCK'
#!/bin/sh
exec "$REAL_NODE" "$@"
MOCK
chmod +x "$tmp/bin/python3" "$tmp/bin/bash"
env -u OPENFRAME_CODECS REAL_NODE="$(command -v node)" XDG_DATA_HOME="$tmp/xdg-data" EXPECTED_SOURCE="$tmp/repo" PATH="$tmp/bin:$PATH" /bin/bash "$cli" codecs >/dev/null
[[ "$(wc -l < "$OPENFRAME_STATE/codec-build-steps")" == 3 ]]
echo 'Native codec build dispatch and XDG default self-check passed.'
# Resuming an ML dependency failure must use the project's Python 3.12 runtime.
mkdir -p "$tmp/repo/machine-learning"
cat > "$tmp/bin/uv" <<'MOCK'
#!/bin/bash
[[ "$PWD" == "$EXPECTED_SOURCE/machine-learning" ]]
[[ "$*" == 'sync --frozen --extra cpu --no-dev --python 3.12' ]]
printf 'ML sync checked\n' > "$OPENFRAME_STATE/ml-sync"
MOCK
chmod +x "$tmp/bin/uv"
EXPECTED_SOURCE="$tmp/repo" PATH="$tmp/bin:$PATH" /bin/bash "$cli" build-ml
grep -Fx 'ML sync checked' "$OPENFRAME_STATE/ml-sync" >/dev/null
echo 'Native ML resume self-check passed.'
# Everyday service commands talk to systemd user units and the local web port.
cat > "$tmp/bin/systemctl" <<'MOCK'
#!/bin/bash
echo "systemctl $*" >> "$OPENFRAME_STATE/systemctl"
[[ "$2" != is-active ]] || { [[ "$3" == openframe-ml.service ]] && echo failed && exit 3; echo active; }
MOCK
printf '#!/bin/sh
exit 0
' > "$tmp/bin/curl"
# shellcheck disable=SC2016
printf '#!/bin/sh
echo "journalctl $*" > "$OPENFRAME_STATE/journalctl"
' > "$tmp/bin/journalctl"
chmod +x "$tmp/bin/systemctl" "$tmp/bin/curl" "$tmp/bin/journalctl"
status="$(PATH="$tmp/bin:$PATH" /bin/bash "$cli" status)"
grep -q 'openframe-ml *failed' <<<"$status"
grep -q 'Web app is up' <<<"$status"
PATH="$tmp/bin:$PATH" /bin/bash "$cli" restart >/dev/null
grep -Fx 'systemctl --user restart openframe-db openframe-redis openframe-ml openframe' "$OPENFRAME_STATE/systemctl" >/dev/null
PATH="$tmp/bin:$PATH" /bin/bash "$cli" logs db --since today
grep -Fx 'journalctl --user -u openframe-db -n 50 -f --since today' "$OPENFRAME_STATE/journalctl" >/dev/null
if PATH="$tmp/bin:$PATH" /bin/bash "$cli" logs nonsense >/dev/null 2>&1; then echo 'logs accepted unknown service' >&2; exit 1; fi
echo 'Native service command self-check passed.'
# Prepare's barriers fail if independent tasks or downloads are serialized.
rm "$tmp/bin/bash"
REAL_NODE="$(command -v node)"
export REAL_NODE EXPECTED_SOURCE="$tmp/repo"
export PATH="$tmp/bin:$PATH"
export TEST_EVENTS="$OPENFRAME_STATE/events"
mkdir -p "$TEST_EVENTS" "$tmp/repo/server/test/benchmarks/native-ubuntu/codecs" "$tmp/repo/web/src"
printf 'lock v1\n' > "$tmp/repo/pnpm-lock.yaml"
printf 'uv lock v1\n' > "$tmp/repo/machine-learning/uv.lock"
printf '{"version":"1"}\n' > "$tmp/repo/package.json"
printf 'source v1\n' > "$tmp/repo/web/src/page.svelte"
cat > "$tmp/bin/test-helpers" <<'MOCK'
wait_file() {
  local i
  for ((i=0; i<250; i++)); do [[ -f "$1" ]] && return 0; sleep 0.02; done
  echo "Timed out waiting for $1" >&2; return 1
}
started() {
  for task in web ml codecs resources; do
    case "$(< "$OPENFRAME_STATE/progress/$task.status")" in
      pending|running|done|skipped|failed) ;;
      *) echo "Invalid status for $task" >&2; return 1 ;;
    esac
  done
  touch "$TEST_EVENTS/$1"
  echo "$1 output"
  if [[ "${TEST_BARRIER:-}" == 1 ]]; then
    for task in web ml codecs resources; do wait_file "$TEST_EVENTS/$task"; done
  fi
}
MOCK
cat > "$tmp/bin/pnpm" <<'MOCK'
#!/bin/bash
set -euo pipefail
source "$(dirname "$0")/test-helpers"
if [[ "$1" == --version ]]; then echo 12.14.0; exit; fi
if [[ "$*" == *' install '* ]]; then
  [[ "$*" == *--frozen-lockfile* && "$*" == *--prefer-offline* ]]
  started web
  if [[ "${TEST_FAIL:-}" == install ]]; then exit 7; fi
  if [[ "${TEST_BARRIER:-}" == 1 ]]; then wait_file "$TEST_EVENTS/libraries-built"; fi
  mkdir -p node_modules server/node_modules/sharp web/node_modules packages/plugin-core/node_modules
  echo modules > node_modules/.modules.yaml
  printf '{"version":"0.35.3"}\n' > server/node_modules/sharp/package.json
  touch "$TEST_EVENTS/dependencies-installed"
  exit
fi
[[ "$pnpm_config_verify_deps_before_run" == false ]]
[[ "$pnpm_config_sync_injected_deps_after_scripts" == '["build"]' ]]
[[ -f "$TEST_EVENTS/dependencies-installed" ]]
case "$2" in
  @immich/sdk) mkdir -p packages/sdk/build; echo sdk > packages/sdk/build/index.js ;;
  @immich/plugin-sdk)
    [[ -s packages/sdk/build/index.js ]]
    mkdir -p packages/plugin-sdk/dist; echo sdk > packages/plugin-sdk/dist/index.js ;;
  *)
    [[ -s packages/plugin-sdk/dist/index.js ]]
    touch "$TEST_EVENTS/build-${2##*/}"
    for task in plugin-core immich immich-web; do wait_file "$TEST_EVENTS/build-$task"; done
    if [[ "${TEST_BARRIER:-}" == 1 ]]; then wait_file "$TEST_EVENTS/sharp-built"; fi
    if [[ "${TEST_FAIL:-}" == server && "$2" == immich ]]; then exit 8; fi
    case "$2" in
      @immich/plugin-core)
        mkdir -p packages/plugin-core/dist
        echo wasm > packages/plugin-core/dist/plugin.wasm
        echo manifest > packages/plugin-core/manifest.json ;;
      immich) mkdir -p server/dist; echo server > server/dist/main.js ;;
      immich-web) mkdir -p web/build; echo web > web/build/index.html ;;
    esac
    ;;
esac
MOCK
cat > "$tmp/bin/uv" <<'MOCK'
#!/bin/bash
set -euo pipefail
source "$(dirname "$0")/test-helpers"
if [[ "$1" == --version ]]; then echo 'uv mock'; exit; fi
[[ "$*" == 'sync --frozen --extra cpu --no-dev --python 3.12' ]]
started ml
if [[ "${TEST_FAIL:-}" == ml ]]; then exit 9; fi
mkdir -p .venv/bin
printf '#!/bin/sh\nexit 0\n' > .venv/bin/python
chmod +x .venv/bin/python
echo python > .venv/pyvenv.cfg
MOCK
cat > "$tmp/bin/python3" <<'MOCK'
#!/bin/bash
set -euo pipefail
source "$(dirname "$0")/test-helpers"
[[ "$1" == */codecs/prepare.py ]]
started codecs
mkdir -p "$OPENFRAME_CODECS"
MOCK
cat > "$tmp/repo/server/test/benchmarks/native-ubuntu/codecs/build.sh" <<'MOCK'
#!/bin/bash
set -euo pipefail
mkdir -p "$OPENFRAME_CODECS/prefix/lib" "$OPENFRAME_CODECS/prefix/etc/ImageMagick-7"
for lib in vips heif de265 jxl raw jpeg tiff hwy; do echo library > "$OPENFRAME_CODECS/prefix/lib/lib$lib.so"; done
echo policy > "$OPENFRAME_CODECS/prefix/etc/ImageMagick-7/policy.xml"
echo compile >> "$TEST_EVENTS/compiles"
touch "$TEST_EVENTS/libraries-built"
MOCK
cat > "$tmp/repo/server/test/benchmarks/native-ubuntu/codecs/sharp.sh" <<'MOCK'
#!/bin/bash
set -euo pipefail
[[ -s "$OPENFRAME_SOURCE/server/node_modules/sharp/package.json" ]]
[[ -f "$TEST_EVENTS/dependencies-installed" ]]
mkdir -p "$OPENFRAME_CODECS/sharp-native/src/build/Release"
printf '{"version":"0.35.3"}\n' > "$OPENFRAME_CODECS/sharp-native/package.json"
echo native > "$OPENFRAME_CODECS/sharp-native/src/build/Release/sharp-linux-x64-0.35.3.node"
touch "$TEST_EVENTS/sharp-built"
MOCK
cat > "$tmp/bin/curl" <<'MOCK'
#!/bin/bash
set -euo pipefail
source "$(dirname "$0")/test-helpers"
started resources
file="${*: -1}"
name="${file##*/}"
touch "$TEST_EVENTS/download-$name"
for name in admin1CodesASCII.txt admin2Codes.txt countryInfo.txt cities500.zip ne_10m_admin_0_countries.geojson; do
  wait_file "$TEST_EVENTS/download-$name"
done
if [[ "${TEST_FAIL:-}" == download && "$file" == */countryInfo.txt ]]; then exit 22; fi
printf 'download\n' > "$file"
MOCK
cat > "$tmp/bin/unzip" <<'MOCK'
#!/bin/bash
set -euo pipefail
echo cities > "${*: -1}/cities500.txt"
MOCK
printf '#!/bin/sh\nexit 0\n' > "$tmp/bin/extism-js"
chmod +x "$tmp/bin/"{pnpm,uv,python3,curl,unzip,extism-js}
# This is an input in the real checkout, not generated by its build.
mkdir -p "$tmp/repo/packages/plugin-core"
echo manifest > "$tmp/repo/packages/plugin-core/manifest.json"
check_statuses() {
  local task
  for task in web ml codecs resources; do
    [[ "$(< "$OPENFRAME_STATE/progress/$task.status")" == "$1" ]]
    [[ "$(wc -w < "$OPENFRAME_STATE/progress/$task.status")" == 1 ]]
  done
}
TEST_BARRIER=1 "$cli" prepare > "$tmp/prepare.out" 2> "$tmp/prepare.err"
check_statuses "done"
[[ ! -s "$tmp/prepare.out" && ! -s "$tmp/prepare.err" ]]
for task in web ml codecs resources; do
  grep -q "$task output" "$OPENFRAME_STATE/progress/$task.log"
done
cp "$OPENFRAME_STATE/progress/web.log" "$tmp/first-web.log"
"$cli" prepare --resume > "$tmp/prepare.out"
check_statuses skipped
cmp "$tmp/first-web.log" "$OPENFRAME_STATE/progress/web.log"
# Local source edits must invalidate the web build, while the other tasks skip.
echo changed >> "$tmp/repo/web/src/page.svelte"
"$cli" prepare
[[ "$(< "$OPENFRAME_STATE/progress/web.status")" == "done" ]]
for task in ml codecs resources; do [[ "$(< "$OPENFRAME_STATE/progress/$task.status")" == skipped ]]; done
# Failed server builds drain the other builds and cannot leave a success stamp.
echo changed >> "$tmp/repo/web/src/page.svelte"
if TEST_FAIL=server "$cli" prepare > "$tmp/prepare.out" 2> "$tmp/prepare.err"; then echo 'prepare accepted server failure' >&2; exit 1; fi
grep -Fx 'failed: web' "$tmp/prepare.err" >/dev/null
[[ ! -e "$OPENFRAME_STATE/stamps/web" ]]
"$cli" prepare --resume
[[ "$(< "$OPENFRAME_STATE/progress/web.status")" == "done" ]]
# A missing addon rebuilds Sharp without recompiling the native libraries.
rm "$OPENFRAME_CODECS/sharp-native/src/build/Release/sharp-linux-x64-0.35.3.node"
"$cli" prepare
[[ "$(< "$OPENFRAME_STATE/progress/codecs.status")" == "done" ]]
[[ "$(wc -l < "$TEST_EVENTS/compiles")" == 1 ]]
[[ "$(< "$OPENFRAME_STATE/progress/web.status")" == skipped ]]
# A lockfile edit invalidates JS and codecs, but preserves independent results.
echo changed >> "$tmp/repo/pnpm-lock.yaml"
"$cli" prepare
[[ "$(< "$OPENFRAME_STATE/progress/web.status")" == "done" ]]
[[ "$(< "$OPENFRAME_STATE/progress/codecs.status")" == "done" ]]
[[ "$(< "$OPENFRAME_STATE/progress/ml.status")" == skipped ]]
# Failed tasks never leave a success stamp, even if old outputs still exist.
echo changed >> "$tmp/repo/machine-learning/uv.lock"
if TEST_FAIL=ml "$cli" prepare > "$tmp/prepare.out" 2> "$tmp/prepare.err"; then echo 'prepare accepted ML failure' >&2; exit 1; fi
grep -Fx 'failed: ml' "$tmp/prepare.err" >/dev/null
[[ ! -e "$OPENFRAME_STATE/stamps/ml" ]]
[[ "$(< "$OPENFRAME_STATE/progress/ml.status")" == failed ]]
"$cli" prepare --resume
[[ "$(< "$OPENFRAME_STATE/progress/ml.status")" == "done" ]]
# Failed installs unblock the waiting codec task, and drain ML/resources.
rm -rf "$OPENFRAME_STATE/stamps" "$TEST_EVENTS"
mkdir -p "$TEST_EVENTS"
if TEST_BARRIER=1 TEST_FAIL=install "$cli" prepare > "$tmp/prepare.out" 2> "$tmp/prepare.err"; then echo 'prepare accepted install failure' >&2; exit 1; fi
grep -Fx 'failed: web' "$tmp/prepare.err" >/dev/null
grep -Fx 'failed: codecs' "$tmp/prepare.err" >/dev/null
for task in ml resources; do [[ "$(< "$OPENFRAME_STATE/progress/$task.status")" == "done" ]]; done
[[ ! -e "$OPENFRAME_STATE/progress/dependencies.ready" ]]
"$cli" prepare --resume
for task in web codecs; do [[ "$(< "$OPENFRAME_STATE/progress/$task.status")" == "done" ]]; done
for task in ml resources; do [[ "$(< "$OPENFRAME_STATE/progress/$task.status")" == skipped ]]; done
# A failed download leaves the existing data intact and all siblings finish.
cp "$OPENFRAME_STATE/build/geodata/countryInfo.txt" "$tmp/countryInfo.txt"
rm "$OPENFRAME_STATE/stamps/resources"
if TEST_FAIL=download "$cli" prepare > "$tmp/prepare.out" 2> "$tmp/prepare.err"; then echo 'prepare accepted download failure' >&2; exit 1; fi
grep -Fx 'failed: resources' "$tmp/prepare.err" >/dev/null
cmp "$tmp/countryInfo.txt" "$OPENFRAME_STATE/build/geodata/countryInfo.txt"
[[ -z "$(find "$OPENFRAME_STATE/build/geodata" -name '.download.*' -print)" ]]
"$cli" prepare --resume
[[ "$(< "$OPENFRAME_STATE/progress/resources.status")" == "done" ]]
[[ -z "$(find "$OPENFRAME_STATE/progress" -name '*.tmp' -print)" ]]
echo 'Native prepare concurrency, logs, failure draining and resume self-check passed.'
# A second prepare must not reset a running installation's progress.
cp "$OPENFRAME_STATE/progress/web.status" "$tmp/status-before-lock"
if flock "$OPENFRAME_STATE/prepare.lock" "$cli" prepare > "$tmp/locked.out" 2>&1; then
  echo 'prepare accepted overlapping writer' >&2; exit 1
fi
cmp "$tmp/status-before-lock" "$OPENFRAME_STATE/progress/web.status"
# Compiler concurrency accepts an explicit bound and rejects unsafe values.
OPENFRAME_BUILD_JOBS=3 /bin/bash -c 'source "$1"; [[ "$OPENFRAME_BUILD_JOBS" == 3 ]]' -- "$root/server/test/benchmarks/native-ubuntu/codecs/jobs.sh"
if OPENFRAME_BUILD_JOBS=0 /bin/bash "$root/server/test/benchmarks/native-ubuntu/codecs/jobs.sh" >/dev/null 2>&1; then
  echo 'codec jobs accepted zero' >&2; exit 1
fi
echo 'Native prepare lock and compiler job limit self-check passed.'
# Uninstall: only an install.sh layout, only its own units and wrapper, and data
# is kept unless erasing was chosen explicitly.
# Clean mocks: the prepare checks above replaced curl and bash in $tmp/bin.
mkdir -p "$tmp/ubin"
cat > "$tmp/ubin/systemctl" <<'MOCK'
#!/bin/sh
echo "systemctl $*" >> "$OPENFRAME_STATE/../../systemctl.log"
MOCK
printf '#!/bin/sh\nexit 0\n' > "$tmp/ubin/curl"
printf '#!/bin/sh\necho "-- dump"\n' > "$tmp/ubin/pg_dump"
chmod +x "$tmp/ubin/systemctl" "$tmp/ubin/curl" "$tmp/ubin/pg_dump"
make_install() {
  local dir="$1"
  rm -rf -- "$dir"
  mkdir -p "$dir/postgres" "$dir/state/media" "$dir/state/build" "$dir/codecs" "$tmp/home/.local/bin" "$tmp/xdg/systemd/user"
  printf 'DB_USERNAME=openframe\nDB_PORT=5433\nDB_PASSWORD=x\nDB_DATABASE_NAME=openframe\n' > "$dir/env"
  echo 17 > "$dir/postgres/PG_VERSION"; touch "$dir/redis.conf" "$dir/state/media/photo.jpg" "$dir/state/build/www" "$dir/codecs/lib"
  for unit in openframe openframe-ml openframe-db openframe-redis; do
    printf '[Unit]\nDescription=OpenFrame native %s\n' "$unit" > "$tmp/xdg/systemd/user/$unit.service"
  done
  printf '[Unit]\nDescription=Something else\n' > "$tmp/xdg/systemd/user/unrelated.service"
  printf '#!/usr/bin/env bash\n# Created by the OpenFrame installer. Safe to delete.\n' > "$tmp/home/.local/bin/openframe"
}
lifecycle() {
  env HOME="$tmp/home" XDG_CONFIG_HOME="$tmp/xdg" OPENFRAME_CONFIG="$1/env" OPENFRAME_STATE="$1/state" \
    PATH="$tmp/ubin:$PATH" /bin/bash "$cli" "${@:2}"
}
install_dir="$tmp/home/openframe"
make_install "$install_dir"
lifecycle "$install_dir" uninstall --keep-data --yes >/dev/null
[[ -f "$install_dir/state/media/photo.jpg" && -f "$install_dir/postgres/PG_VERSION" && -f "$install_dir/env" ]]
[[ ! -e "$install_dir/codecs" && ! -e "$install_dir/state/build" && ! -e "$tmp/home/.local/bin/openframe" ]]
[[ ! -e "$tmp/xdg/systemd/user/openframe.service" && -f "$tmp/xdg/systemd/user/unrelated.service" ]]
make_install "$install_dir"
lifecycle "$install_dir" uninstall --erase-everything --yes >/dev/null
[[ ! -e "$install_dir" && -d "$tmp/home" ]]
make_install "$install_dir"
if command -v setsid >/dev/null && setsid -w env HOME="$tmp/home" XDG_CONFIG_HOME="$tmp/xdg" OPENFRAME_CONFIG="$install_dir/env" \
  OPENFRAME_STATE="$install_dir/state" PATH="$tmp/ubin:$PATH" /bin/bash "$cli" uninstall </dev/null >/dev/null 2>&1; then
  echo 'uninstall ran without a terminal or a choice' >&2; exit 1
fi
[[ -f "$install_dir/state/media/photo.jpg" && -f "$tmp/xdg/systemd/user/openframe.service" ]]
if lifecycle "$tmp/home" uninstall --erase-everything --yes >/dev/null 2>&1; then echo 'uninstall accepted a non-installer folder' >&2; exit 1; fi
[[ -d "$tmp/home/openframe" ]]
# Answers typed at the prompt must reach the caller (choose 2, then type ERASE).
if command -v script >/dev/null; then
  make_install "$install_dir"
  printf '2\nERASE\n' | env HOME="$tmp/home" XDG_CONFIG_HOME="$tmp/xdg" OPENFRAME_CONFIG="$install_dir/env" \
    OPENFRAME_STATE="$install_dir/state" PATH="$tmp/ubin:$PATH" script -qec "/bin/bash $cli uninstall" /dev/null >/dev/null
  [[ ! -e "$install_dir" ]]
  make_install "$install_dir"
  printf '2\nerase\n' | env HOME="$tmp/home" XDG_CONFIG_HOME="$tmp/xdg" OPENFRAME_CONFIG="$install_dir/env" \
    OPENFRAME_STATE="$install_dir/state" PATH="$tmp/ubin:$PATH" script -qec "/bin/bash $cli uninstall" /dev/null >/dev/null
  [[ -f "$install_dir/state/media/photo.jpg" ]]
fi
echo 'Native uninstall self-check passed.'
# Update: fast-forward, back up first, rebuild, restart; roll back a broken build.
git_q() { git -c user.name=t -c user.email=t@t -c init.defaultBranch=main "$@" >/dev/null 2>&1; }
git_q init --bare "$tmp/origin.git"
git_q clone "$tmp/origin.git" "$tmp/source"
mkdir -p "$tmp/source/scripts/native" "$tmp/source/server/bin"
# Stub the build steps in this copy; the update logic itself stays real.
sed '/^ROOT=/a case "${1:-}" in prepare) [[ ! -e "$ROOT/BROKEN" ]]; exit ;; doctor) exit 0 ;; esac' "$root/scripts/native/openframe" > "$tmp/source/scripts/native/openframe"
chmod +x "$tmp/source/scripts/native/openframe"
git_q -C "$tmp/source" add -A && git_q -C "$tmp/source" commit -m 'first' && git_q -C "$tmp/source" push -u origin HEAD
make_install "$install_dir"
update() { env HOME="$tmp/home" XDG_CONFIG_HOME="$tmp/xdg" OPENFRAME_CONFIG="$install_dir/env" OPENFRAME_STATE="$install_dir/state" \
  PATH="$tmp/ubin:$PATH" /bin/bash "$tmp/source/scripts/native/openframe" update "$@"; }
update --yes | grep 'up to date' >/dev/null
git_q clone "$tmp/origin.git" "$tmp/upstream"
echo 'new feature' > "$tmp/upstream/FEATURE"
git_q -C "$tmp/upstream" add -A && git_q -C "$tmp/upstream" commit -m 'Add a new feature' && git_q -C "$tmp/upstream" push
update --check | grep 'Add a new feature' >/dev/null
[[ ! -e "$tmp/source/FEATURE" ]]
echo 'local edit' >> "$tmp/source/scripts/native/openframe"
if update --yes >/dev/null 2>&1; then echo 'update overwrote local changes' >&2; exit 1; fi
git_q -C "$tmp/source" checkout -- scripts/native/openframe
: > "$tmp/home/systemctl.log"
update --yes >/dev/null
[[ -f "$tmp/source/FEATURE" ]]
ls "$install_dir"/backups/openframe-*.sql.gz >/dev/null
grep 'restart openframe-db openframe-redis openframe-ml openframe' "$tmp/home/systemctl.log" >/dev/null
good="$(git -C "$tmp/source" rev-parse HEAD)"
touch "$tmp/upstream/BROKEN"
git_q -C "$tmp/upstream" pull && git_q -C "$tmp/upstream" add -A && git_q -C "$tmp/upstream" commit -m 'Broken build' && git_q -C "$tmp/upstream" push
if update --yes >/dev/null 2>&1; then echo 'update accepted a broken build' >&2; exit 1; fi
[[ "$(git -C "$tmp/source" rev-parse HEAD)" == "$good" && ! -e "$tmp/source/BROKEN" ]]
echo 'Native update self-check passed.'
