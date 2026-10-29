---
sidebar_position: 20
---

# Set up OpenFrame

The installer supports Docker or native services on Ubuntu 24.04 and Arch/Omarchy x86-64. Run it from a full source checkout as a normal user.

```bash
bash install.sh
```

When Docker and Compose v2+ are usable by your user, the plan offers **Fast install with Docker** or **Build natively** in one decision. Docker downloads prebuilt OpenFrame server and CPU machine-learning images, normally taking a few minutes. Native builds take about 5–15 minutes, depending mostly on CPU cores (the build stage took 5 minutes 16 seconds on a 12-thread laptop with cold download caches); a second run reuses finished work. No Docker is required for native mode.

```bash
bash install.sh --docker --yes --dir "$HOME/openframe" --port 2283
bash install.sh --native --yes --dir "$HOME/openframe" --port 2283
```

With `--yes` and no mode flag, Docker is selected when available and native otherwise. Native installations being resumed keep their mode. Docker must already be installed and accessible without sudo; setup does not change socket permissions.

Docker mode pins both OpenFrame images to `commit-<full checkout SHA>` in the private `.env` file. If either image cannot be pulled, the dashboard shows a timed local build using the checkout's Dockerfile and prebuilt codec base. This fallback needs Internet access and more time and disk space. It builds local uncommitted changes too. Database and cache image versions match the upstream bundle. PostgreSQL, Redis and ML have no published host ports; only the chosen web port is exposed. Photos, database and model cache live under `library/`, `postgres/` and `model-cache/` in the install folder. Re-running setup preserves its credentials, image pins and saved port.

For native mode on Arch/Omarchy, setup installs missing packages with pacman and activates pinned build tools through mise. Sudo may ask for your password. On Ubuntu, install the [native prerequisites](../../../scripts/native/README.md#prerequisites) first. Native mode requires a working systemd user session and free ports 5433, 6380 and 3003 in addition to the web port.

Both modes use the live dashboard and print a private log path. Setup never converts an existing native library to Docker. Choose a separate folder and web port for a second installation.

## Docker management

Docker setup places its management command at `<install-folder>/openframe`, and links it into `~/.local/bin/openframe` only if that name is unused. An existing native command is preserved.

```bash
~/openframe/openframe status
~/openframe/openframe logs
~/openframe/openframe restart
~/openframe/openframe stop
~/openframe/openframe update
~/openframe/openframe uninstall --keep-data --yes
```

`update` pulls the images pinned in `.env` and runs Compose up. To upgrade, back up your database and library, then change both OpenFrame image tags to the same published `commit-<SHA>` or release version, such as `v3.3.0`, before updating. It does not automatically back up or roll back the database.

Uninstall asks whether to keep data or erase it, with a typed `ERASE` confirmation for deletion. For unattended deletion use `uninstall --erase-everything --yes`. Keeping data preserves the configuration for reinstalling into the same folder. Containers and the project network are removed; images remain cached. Docker's restart policy starts the app when the Docker daemon starts.

## Connect your phone

Open the LAN address printed by setup, create your administrator account and follow onboarding. Its mobile step shows a QR code that opens the server website, plus the address to enter in the compatible mobile app. Sign in with the same account. Open onboarding through the LAN address rather than localhost. QR codes contain only the server address, never credentials. Install `qrencode` to also see a terminal QR.

The web port binds to all host interfaces. Keep both devices on the same trusted network. Use a TLS reverse proxy before exposing the app to the Internet.

## Native service management

Setup installs an `openframe` command in `~/.local/bin`:

```bash
openframe status     # each service's state and whether the web app responds
openframe logs       # follow server and machine learning logs (or: openframe logs db)
openframe restart    # restart all services; also starts them after a stop
openframe stop
openframe help       # every command, including admin tools
openframe update     # latest version: backs up the database, rebuilds what changed, restarts
openframe uninstall  # remove OpenFrame; choose to keep your photos and data or erase everything
```

`openframe update` checks the source checkout's upstream and lists what's new; `openframe update --check` only reports. Updating refuses a checkout with local changes, backs up the database to `backups/` in the installation folder (the three newest are kept), rebuilds only the changed parts and restarts. If the new version fails to build, it switches back to the previous version.

`openframe uninstall` stops and removes the services and the `openframe` command, then asks what to do with your data. **Keep** removes only rebuildable files (app, codecs, caches); run `bash install.sh --dir <folder>` later to bring everything back. **Erase everything** deletes the whole installation folder after you type `ERASE`. For scripts use `--keep-data` or `--erase-everything`, with `--yes`. A source checkout outside the installation folder is never deleted.

To run without a logged-in session, enable lingering for your account:

```bash
sudo loginctl enable-linger "$USER"
```

Configuration lives in the installation folder's private `env` file. Media lives under `state/media`, PostgreSQL data under `postgres`, and codecs under `codecs`. Keep the source checkout and installation folder at their original paths.

## Native recovery and backups

A failure keeps files for inspection. Check the printed error and user service logs. For a failure during the build, before systemd services were created, run `bash install.sh` again to resume the default installation. For a custom folder, use:

```bash
bash install.sh --resume --dir "$HOME/openframe"
```

This keeps the database and configuration and continues with the ML dependency install when the web/server outputs already exist. Resume uses the saved port. It refuses to run once OpenFrame systemd services exist. Without `--resume`, existing folders are never overwritten. If services were created, stop them before repairing the retained installation. Do not remove a database or media directory to retry setup.

Back up both media and PostgreSQL. Use the application's database backup tools for a running instance, or stop `openframe`, `openframe-ml` and `openframe-db` before copying the PostgreSQL data directory. Redis is a private disposable job cache.
