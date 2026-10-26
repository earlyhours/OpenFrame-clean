# Disposable Ubuntu codec experiment

This is a source-build reproduction for the fixed `~/openframe-native-validation-20261026/codec-build` directory on Ubuntu 24.04 x86-64. It is not a production codec installer. It leaves the application dependency link unchanged. Keep Docker installation and comparison assets until codec coverage and migration checks pass.

The host must already have Python 3.12 or newer, apt-get, dpkg-deb, a C/C++ compiler, make, CMake, Git, autoconf, automake, libtool and flock. No sudo or system package installation is used. The mutable preparation, build and test operations share an exclusive lock. A second operation fails before changing the codec installation. `prepare.py` downloads exact Ubuntu package versions and extracts them under this directory. Missing archived package versions cause failure rather than substitution. Locally recorded SHA256 values pin the downloaded source archives, upstream patches and Ubuntu packages. ImageMagick uses the exact upstream security policy, including disabled external delegates and dangerous coders. The source revisions and patches follow the cached Docker reference's build lock; Ubuntu system libraries can still differ from that image.

Copy `prepare.py`, `manifest.json`, `build.sh`, `sharp.sh`, `check.sh`, `smoke.py` and `pairs.sh` into the fixed codec directory. From a fresh codec directory:

```sh
python3 prepare.py
bash build.sh > ../logs/codec-build.log 2>&1
bash sharp.sh > ../logs/codec-sharp.log 2>&1
python3 prepare.py --verify
bash check.sh > ../logs/codec-check.log 2>&1
bash pairs.sh > ../logs/codec-pairs.log 2>&1
```

The Sharp step copies the isolated application's existing Sharp source package, reuses its installed build dependencies, and builds a separate package in `sharp-native`. Node 24.13.1, node-gyp 13.1.0 and node-addon-api 8.9.2 must already be in the recorded deployment. It does not switch the application to that package. `check.sh` temporarily selects it, supplies `LD_LIBRARY_PATH`, checks policy enforcement, runs the repository sample checks, doctor and one normal API/worker HTTP/ML smoke check, then restores the original Sharp symlink through an exit trap. The three upstream fixtures and normal private deployment configuration must already exist as described in the Ubuntu validation record. PostgreSQL, Redis and ML must remain available. Stop the isolated API before changing its dependency link. The smoke runner starts and stops its own process group. Its single-run timings establish no speed gain.

Build logs, source trees, package archives and output libraries stay in the disposable directory for inspection. Reuse of an already configured build tree is not a fresh-install test. Read `../../NATIVE-UBUNTU-VALIDATION.md` for measured outcomes, codec comparisons and remaining gates.

`pairs.sh` reuses the original three-pair runner with separate output filenames and the native codec package selected. It retains alternating order, fresh users, queue drain, and process-group cleanup. Analyze `logs/native-http-source-pairs.jsonl` with `native-ubuntu/analyze.py`. Preserve existing result files before intentionally repeating either test.

For a decoder mismatch, copy `pixels.mjs` to `app/server/codec-diagnostic.mjs`. Its import is relative to that deployed server directory. Run it with `INPUT OUTPUT_DIRECTORY` under each codec stack. It writes initial decoded pixels, repository output pixels, and decoded JPEG pixels. Compare the output directories with `python3 compare-pixels.py DOCKER_DIRECTORY NATIVE_DIRECTORY OUTPUT.json`. The metric reports a difference; it does not approve a quality tradeoff.
