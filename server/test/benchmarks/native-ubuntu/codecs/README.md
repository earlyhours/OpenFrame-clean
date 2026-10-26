# Disposable Ubuntu codec experiment

This is a source-build reproduction for the fixed `~/openframe-native-validation-20261026/codec-build` directory on Ubuntu 24.04 x86-64. It is not a production codec installer. It leaves the application dependency link unchanged. Keep Docker installation and comparison assets until codec coverage and migration checks pass.

The host must already have Python 3.12 or newer, apt-get, dpkg-deb, a C/C++ compiler, make, CMake, Git, autoconf, automake and libtool. No sudo or system package installation is used. `prepare.py` downloads exact Ubuntu package versions and extracts them under this directory. Missing archived package versions cause failure rather than substitution. Locally recorded SHA256 values pin the downloaded source archives, upstream patches and Ubuntu packages. The source revisions and patches follow the cached Docker reference's build lock; Ubuntu system libraries can still differ from that image.

Copy `prepare.py`, `manifest.json`, `build.sh`, `sharp.sh` and `check.sh` into the fixed codec directory. From a fresh codec directory:

```sh
python3 prepare.py
bash build.sh > ../logs/codec-build.log 2>&1
bash sharp.sh > ../logs/codec-sharp.log 2>&1
python3 prepare.py --verify
bash check.sh > ../logs/codec-check.log 2>&1
```

The Sharp step copies the isolated application's existing Sharp source package, reuses its installed build dependencies, and builds a separate package in `sharp-native`. Node 24.13.1, node-gyp 13.1.0 and node-addon-api 8.9.2 must already be in the recorded deployment. It does not switch the application to that package. `check.sh` temporarily selects it, supplies `LD_LIBRARY_PATH`, runs the repository sample checks and doctor, then restores the original Sharp symlink through an exit trap. The three upstream fixtures and normal private deployment configuration must already exist as described in the Ubuntu validation record. Stop the isolated API before changing its dependency link.

Build logs, source trees, package archives and output libraries stay in the disposable directory for inspection. Reuse of an already configured build tree is not a fresh-install test. Read `../../NATIVE-UBUNTU-VALIDATION.md` for measured outcomes, codec comparisons and remaining gates.
