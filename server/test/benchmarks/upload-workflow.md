# Upload workflow measurements

Use a disposable, loopback native installation with its normal API, workers and ML. This runner creates users and persistent assets. It does not change server concurrency, media quality or durability. Do not run against an existing library.

Create a private JSON manifest containing at least eight distinct source files. Each entry is `{ "path": "photo.jpg", "kind": "photo" }` or `{ "path": "video.mp4", "kind": "video" }`. Paths resolve relative to the manifest. Use 20 photos for the preview batch target; use a second mixed photo/video manifest for import coverage. Keep the same files and ordering across variants. Real camera files are preferable to generated noise.

From `server`, with Node 24 and dependencies installed:

```sh
node --test test/benchmarks/upload-workflow.test.mjs
node test/benchmarks/upload-workflow.mjs \
  http://127.0.0.1:2287 /private/fixtures/manifest.json /private/admin.json \
  baseline-r0 /private/workflow.jsonl API_SUPERVISOR_PID,ML_PID,POSTGRES_PID,REDIS_PID
```

The admin file contains an existing disposable admin's email and password. Credentials, fixture paths and source bytes are not written to results. Process IDs must belong to this local installation. The runner includes descendants, including children spawned by Node worker threads. Supply separate ML, PostgreSQL and Redis roots to include those services. Overlapping roots are counted once.

The runner warms up once, then performs three rounds of a single idle upload and full batches with 1, 4 and 8 concurrent clients. Each case uses a fresh user and starts after queues drain, so repeated fixture bytes do not take the duplicate shortcut. Preview polling starts immediately after each upload response, at 100 ms intervals. Rows retain each upload response latency, preview availability latency, fixture/preview SHA256, all-response wall time, all-preview wall time and time until background queues drain. All previews are decoded to check dimensions.

Original SHA256, exact range bytes, unauthenticated rejection, duplicate identity, empty/malformed multipart rejection alongside a valid request, and zero failed background jobs are checked after timing. The runner does not establish cancellation cleanup, live-photo linking, codec parity, shared-link permissions or backup restoration. Those remain separate integration gates.

Process CPU and aggregate RSS are sampled every 100 ms through `/proc`. CPU from a child that starts and exits between samples can be missed, so process-tree CPU is a lower bound. RSS sums resident pages and can count shared pages more than once. Sampled peaks can miss shorter spikes. Client CPU/RSS are reported separately. These are not power measurements. Preview polling and process sampling add overhead; keep them identical in both variants.

Alternate baseline/candidate server builds on the same otherwise idle machine. Keep normal worker/ML settings and wait for compiler activity to stop. Compare matched fixture rows and batch completion wall times; retain unfavorable runs. This script does not itself establish a speedup.

The initial local multipart diagnostic used the actual interceptor and durable storage, with auth/database/jobs excluded and the HTTP client in the same process. Explicit 1 MiB chunk coalescing gave no consistent benefit and copied every file's bytes again. It was rejected. Upload request code remains unchanged. The saved native stack's approximately 0.25 s upload response versus 3.4 s preview readiness makes post-upload work the next target.
