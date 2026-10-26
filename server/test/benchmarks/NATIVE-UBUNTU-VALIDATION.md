# Isolated Ubuntu native validation, 2026-10-26

The requested 2–5x end-to-end gain is not established. This run tests the native deployment on `yvm@192.168.1.9`, an Ubuntu 24.04.5 x86-64 host with two AMD A4-9125 CPU cores and 6.7 GiB RAM. Its existing applications, databases, Docker deployments and `~/openframe-bench-20261026` were not changed. All candidate services bind to loopback. No system configuration, sudo, Docker runtime, durability setting, media quality or job concurrency setting was used to obtain these results.

The disposable installation is `~/openframe-native-validation-20261026`. This is validation evidence, not a production installation or migration approval. PostgreSQL 16.6 and Redis 7.4.2 were selected as small available source archives for this isolated test; use maintained patched releases for deployment.

## Installed dependencies and startup

| Dependency               | Method                                                                                            | Result                                                                |
| ------------------------ | ------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------- |
| Node 24.13.1 x86-64      | Official Linux tarball; SHA256 checked against upstream SHASUMS256.txt                            | Runs directly on Ubuntu                                               |
| PostgreSQL 16.6          | Source build, `--without-readline --without-icu`, user-local prefix                               | SCRAM-authenticated TCP; fsync remains enabled                        |
| pgvector 0.8.0           | Source build against this PostgreSQL's `pg_config`                                                | Authenticated vector operation passed                                 |
| PostgreSQL contrib       | Built cube, earthdistance, uuid-ossp, unaccent and pg_trgm                                        | Normal application migrations passed                                  |
| Redis 7.4.2              | Source build with libc allocator, user-local prefix                                               | Password-authenticated; loopback; AOF with default every-second fsync |
| Jellyfin FFmpeg 7.1.3-6  | Pinned portable archive, checksum matches `mise.lock`                                             | H.264 encode/probe and playback passed                                |
| uv 0.9.6 / Python 3.13.9 | uv portable archive and managed Python                                                            | Frozen CPU ML dependencies installed                                  |
| Core plugin              | Built on x86-64 development host using pinned Extism JS PDK 1.7.0, Extism CLI 1.6.3, Binaryen 124 | Native runtime imported 14 methods and loaded worker host functions   |
| Web client               | Existing source built without edits and copied into isolated build directory                      | UI source unchanged                                                   |

PostgreSQL is on `127.0.0.1:25432`, Redis on `127.0.0.1:26379`, API on `127.0.0.1:2287`, and ML on `127.0.0.1:3003`. Test credentials were generated locally and remain in private files under the validation directory. The application database role is not a PostgreSQL superuser. Do not publish the environment, password files, SQL backup or fixture `admin.json`.

`doctor` passed authenticated PostgreSQL/Redis checks, vector operations, matching `pg_dump`/`pg_dumpall`/`psql`, JPEG/PNG/WebP round trips and H.264 encoding/probing. A deliberately wrong-major `pg_dump` was rejected with `pg_dump must match PostgreSQL major 16`.

The API and normal microservices worker both started in production mode. The core plugin loaded, and 229,248 geodata records imported. ML started through Python/Gunicorn without Docker. The CLIP visual/textual, Buffalo face detection/recognition and PP-OCRv5 detection/recognition models loaded on CPU. Authenticated text smart search returned an uploaded asset, and all background queues drained with zero failed jobs after the ML warmup.

## Native parity checks

`native-http.mjs` creates disposable users in this isolated instance and uploads six persistent 4000×3000 noise JPEG fixtures plus a generated ten-second 1280×720 H.264 MP4. It verifies:

- Every original download has the same SHA256 as its uploaded fixture.
- Unauthenticated original downloads return 401.
- Authenticated original ranges return 206, exact `Content-Range`, and the requested bytes.
- ETag conditional requests return 304 with an empty body. The harness uses fetch `cache: 'no-cache'` to avoid fetch's implicit `Cache-Control: no-cache` header when a conditional header is supplied.
- Previews become available and decode, metadata search finds each image, compatible H.264 playback preserves original bytes, and video ranges return the requested bytes.
- Text smart search returns an uploaded asset, queues drain, and no background jobs failed.

Unsatisfiable ranges currently return 404 because the existing shared sendFile error handler maps the error to NotFoundException. Both the baseline and candidate retain this behavior. This is a known HTTP limitation, not a passing 416 check.

The application's backup job produced a 18,918,683-byte gzip file containing 53,248,711 bytes of SQL. It restored successfully into a second isolated database, `ofv_restore`, inside one transaction. All nine asset IDs matched and a vector query passed after restore. See `results/native-ubuntu-backup-restore.json`. This does not exercise the interactive maintenance restore flow, an existing-library migration, or a restore to another host.

## Codec regression gate

`native-codecs.mjs` calls the real repository decode/thumbnail path and compares encoded JPEG SHA256 with the original transform. Bundled Sharp 0.35.5/libvips 8.18.7 fails two representative upstream fixtures:

| Fixture                               | Result                                                                                |
| ------------------------------------- | ------------------------------------------------------------------------------------- |
| `formats/heic/IMG_2682.heic`          | Metadata readable, actual decode fails because HEVC/libde265 support was not built in |
| `formats/raw/Canon/EOS_30D.CR2`       | Falls into TIFF loader; preview fails with unsupported old-style JPEG compression     |
| `formats/avif/10bit-HDR-P3-nclx.avif` | Preview succeeds and encoded bytes exactly match the original transform               |

Raw errors, dimensions, dependency versions and source/output hashes are retained in `results/native-ubuntu-codecs.json`. A successful HDR preview comparison establishes equality to the original transform with the same native codec stack; it does not establish equality to Docker codecs or preservation of an HDR display output. One camera RAW and one HDR sample do not establish library-wide compatibility.

Samples came from `immich-app/test-assets` commit `ec56cc6c1d76c45bc9615dc6ea232470a2b0a3a1`. Download individual files from `https://raw.githubusercontent.com/immich-app/test-assets/<commit>/<path>` and check their hashes against the result file. Large sample files are not committed here.

The upstream Docker recipe at `immich-app/base-images` commit `ffeb230c5ade36f0e603aecfaef62e943309640b` builds libheif with libde265, builds libraw and patches libvips loader order. Its libvips build disables TIFF. It also uses jpegli rather than bundled Sharp's mozjpeg. Relevant files are `server/Dockerfile`, `server/sources/libheif.sh`, `server/sources/libraw.sh`, `server/sources/libvips.sh`, and `server/sources/libvips-patches/0001-put-other-loaders-ahead-of-dcrawload.patch`. Reusing only its Debian binaries on Ubuntu would not establish ABI compatibility. The smallest remaining codec task is a user-local build of the matching codec stack followed by a Sharp rebuild and these same sample tests. Retain Docker installation/comparison/e2e assets.

## Reproduce this isolated installation

These steps deliberately target this dated disposable directory. The initializer refuses to replace its environment or initialize a populated cluster. Do not reuse these scripts for an existing deployment.

1. Create the directory with mode 0700 and subdirectories `downloads`, `src`, `local`, `logs`, and `app`. Check that the four loopback ports above are free and that at least the original 30 GiB disk budget is available. Transfer the checkout's built server, installed Linux x86-64 dependencies with symlinks preserved, plugin-sdk artifacts, native scripts, ML source/README/pyproject/uv.lock, unchanged web build and core plugin artifacts. The server and plugin SDK were built using the installed development-host Node 24.13.1 and pinned pnpm 12.14.0.
2. Extract Node from `https://nodejs.org/dist/v24.13.1/node-v24.13.1-linux-x64.tar.xz` into `local`. Check its SHA256 using that release's `SHASUMS256.txt`. Extract the pinned Jellyfin portable FFmpeg archive into `local/ffmpeg`, verifying the checksum in `mise.lock`.
3. Build PostgreSQL from `https://ftp.postgresql.org/pub/source/v16.6/postgresql-16.6.tar.bz2` in `src/postgresql-16.6`:

   ```sh
   ./configure --prefix="$HOME/openframe-native-validation-20261026/local/pgsql" --without-readline --without-icu
   make -j2
   make install
   make -C contrib/cube install
   make -C contrib/earthdistance install
   make -C contrib/unaccent install
   make -C contrib/pg_trgm install
   ```

   The host lacked UUID development headers. In the validation directory, `apt-get download uuid-dev` downloaded Ubuntu package `2.39.3-9ubuntu6.6` without installing it. `dpkg-deb -x downloads/uuid-dev_*.deb local/uuid` extracted its headers. Build only the UUID extension using those headers and the existing system libuuid runtime:

   ```sh
   make -C src/postgresql-16.6/contrib/uuid-ossp USE_PGXS=1 \
     PG_CONFIG="$PWD/local/pgsql/bin/pg_config" \
     PG_CPPFLAGS="-DHAVE_UUID_E2FS -DHAVE_UUID_UUID_H -I$PWD/local/uuid/usr/include" \
     SHLIB_LINK="-l:libuuid.so.1" install
   ```

4. Extract `https://github.com/pgvector/pgvector/archive/refs/tags/v0.8.0.tar.gz` into `src`. Run `make -C src/pgvector-0.8.0 PG_CONFIG="$PWD/local/pgsql/bin/pg_config" -j2`, then the same command with `install` instead of `-j2`. Extract Redis from `https://download.redis.io/releases/redis-7.4.2.tar.gz`; run `make -C src/redis-7.4.2 -j2 MALLOC=libc BUILD_TLS=no`, then `make -C src/redis-7.4.2 PREFIX="$PWD/local/redis" install`.
5. Extract `https://github.com/astral-sh/uv/releases/download/0.9.6/uv-x86_64-unknown-linux-gnu.tar.gz` into `local`. Install the ML environment:

   ```sh
   XDG_CACHE_HOME="$PWD/cache" UV_CACHE_DIR="$PWD/cache/uv" \
   UV_PYTHON_INSTALL_DIR="$PWD/local/python" \
     local/uv-x86_64-unknown-linux-gnu/uv sync \
       --project app/machine-learning --frozen --extra cpu --no-dev --python 3.13
   ```

   The pinned `watchfiles==0.21.0` required a Rust source build for Python 3.13. In the recorded run its build backend also created `~/.cache/puccinialin` for an isolated Rust toolchain with `--no-modify-path`; no shell configuration changed. `XDG_CACHE_HOME` above keeps that download inside the validation directory for a fresh run.

6. Copy `native-ubuntu/initialize.py`, `make-baseline.py`, `backup-check.py`, and `run-pairs.py` to the validation root. Run `python3 initialize.py` once. Set `OPENFRAME_CONFIG` to the generated absolute `env` path and `OPENFRAME_STATE` to `state`; run `app/scripts/native/openframe resources`. Place web/plugin artifacts in the normal `state/build` locations. Run `source ./run-env`, then `app/scripts/native/openframe doctor`. Start `openframe ml` and `openframe start` in separate processes, retaining their PIDs and private logs. The paired runner expects the server PID in `server.pid`.
7. Run the HTTP warmup, backup check, and comparison:

   ```sh
   node app/server/test/benchmarks/native-http.mjs \
     http://127.0.0.1:2287 "$PWD/fixtures" candidate-ml-warmup "$PWD/logs/native-http.jsonl"
   python3 backup-check.py
   python3 make-baseline.py
   python3 run-pairs.py
   ```

   The baseline copies the same built server and reverts only the upload buffer, video read buffer and unchanged-size image transform. Both variants retain authenticated services, normal workers, ML, fsync, codec/quality settings and database schema. The runner alternates three baseline/candidate pairs, uses a fresh user for each run to prevent duplicate-upload shortcuts, waits for ML/queues to settle, and stops only its own recorded runtime between runs. It leaves PostgreSQL, Redis and ML running until explicitly stopped. All samples, including warmups, remain in the JSONL output.

Initial failures remain in private logs: a missing ML README in the transfer, a timed-out Binaryen download resumed with `curl -C -`, missing contrib files at first startup, an HTTP attempt before the listener started, two accidentally overlapping harness startups causing duplicate admin signup, the conditional-fetch cache behavior, and the existing invalid-range 404. These are not omitted from the deployment record or counted as successful parity checks.
