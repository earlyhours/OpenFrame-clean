#!/usr/bin/env bash
set -euo pipefail
root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
tmp="$(mktemp -d)"
trap 'rm -rf -- "$tmp"' EXIT
export OPENFRAME_CONFIG="$tmp/config/env" OPENFRAME_STATE="$tmp/state"
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
