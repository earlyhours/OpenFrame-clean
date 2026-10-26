# Native backend performance work

These are component measurements on the development host using Node 24.13.1, not an Ubuntu deployment benchmark or an end-to-end Immich speed claim. The requested 2–5x gain remains unmet. Shared-host noise, warmed filesystem caches and synthetic media limit what these results predict.

| Path | Measurement | Integrity and tradeoff |
| --- | --- | --- |
| Upload file writes | 1.446x geometric mean of six paired 256 MiB writes; 25.9% less paired process CPU | SHA1 checked on input and reread stored file; `flush: true` retained. Write buffer grows from 64 KiB to 1 MiB per active write. One pair was slower. |
| Video transfers | 1.65x ratio of median times; 24.5% less median process CPU | Six alternating pairs, eight sequential 32 MiB loopback transfers each; warmup SHA256 and timed byte counts. Read buffer grows from 64 KiB to 256 KiB per active video. |
| Image previews | 1.106x geometric mean of six paired 12 MP JPEG-to-1440-preview runs; 10.5% less paired process CPU | Exact encoded SHA256 matches against original transform. Skips an unchanged-size RGB/RGBA transform, preserves grayscale expansion and linear-light resizing. One pair was slower. |

Raw results are in `results/upload-write-native.jsonl`, `results/image-preview-local.jsonl`, and `results/video-stream-node24-transfer.json`. Earlier video runs, including less favorable results, remain available and are described in `VIDEO-STREAM-RESULTS.md`. Process CPU includes client work in the HTTP experiment and is not energy consumption.

Reproduce from `server` after building with Node 24:

```sh
node test/benchmarks/upload-write.mjs
node test/benchmarks/image-preview.mjs
node test/benchmarks/video-stream.mjs test/benchmarks/results/video-stream-repeat.json
node test/benchmarks/video-slow-clients.mjs test/benchmarks/results/video-slow-clients-repeat.json
```

The upload benchmark calls the built repository and compares it with the original write-stream options. The image benchmark subclasses the built repository with the original transform and calls the public decode/thumbnail path. The transfer benchmark isolates the actual Express sendFile read-size choice. The slow-client check uses the built shared helper for the candidate; its process memory includes both server and clients and cannot establish a per-connection memory bound.

## Remaining bottlenecks and limits

A native runtime is available in `scripts/native`, but is experimental. On 2026-10-26, the Linux box at `yvm@192.168.1.9` had Node 22.23.3, no `psql`, Redis server, `uv`, or Extism compiler, no noninteractive sudo, and about 30 GiB free. Its existing `~/openframe-bench-20261026` baseline was left untouched. PostgreSQL/Redis authentication and vector extension checks are implemented but have not passed against a complete isolated native deployment.

Sharp's bundled libvips differs from the custom Docker build. A HEIF capability flag does not prove HEVC-backed HEIC decoding; camera RAW and HDR require representative samples. No such samples are present in this checkout. Keep the Docker install and comparison/e2e assets until upload, processing, search/ML, playback and migration tests pass on the native target.

JPEG encoding/decoding, full-resolution linear-light processing and video transcoding still dominate relevant media workloads. Fusing decode and resize may change resampling/color behavior, so that requires separate quality evidence. Hardware transcoding is device-dependent. No lossy quality, bitrate, durability, security, concurrency, or global kernel defaults were changed to reach a target number.

ZIP export already uses stored entries for compressed media. Database backups use `gzip --rsyncable`; this work retains its output and restore compatibility. Upload read buffering also reaches backup writes through the shared storage repository. Test real uploads and backup/restore under concurrent load before migration.
