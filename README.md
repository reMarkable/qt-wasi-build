# Building Qt with WASI

Scripts to build qtbase and qtsvg with [WASI](https://github.com/webassembly/wasi).

## Building Locally

Patch qtbase to compile with WASI. See patches in reMarkable's [qtbase fork](https://github.com/reMarkable/qtbase/tree/6.10.3%23wasi) as example.
As of now, no chages are needed to qtsvg.

To build locally, run either `./build.sh` with CMake and installed, or `./build.docker.sh` if you wish to use Docker to handle system build dependencies.

## Creating a new release:

If you have maintainer access to this repo, you can use Github Workflows to build and draft a new release.

* Run the [Release Workflow](https://github.com/reMarkable/qt-wasi-build/actions/workflows/release.yml).
    * enter a patched qtbase branch (e.g. `6.10.3#wasi`)
    * and the corresponding qtsvg branch (e.g. `6.10.3`)

* When the workflow succeeds, it creates a draft release, found on the [Releases Page](https://github.com/reMarkable/qt-wasi-build/releases).

