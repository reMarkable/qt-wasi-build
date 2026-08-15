# Configuration for `wasi-sdk-toolchain`, cloned into `wasi-sdk/` by build.sh.
# These are plain variables read by that toolchain, which forwards them into 
# try_compile so compiler probes see the same flags as the real build.

set(WASI_SDK_VERSION 33)
set(WASI_SDK_EXCEPTIONS "wasm")
set(WASI_SDK_SETJMP ON)
set(WASI_SDK_EMULATED_FEATURES "signal;mman;process-clocks;getpid")
set(WASI_SDK_LIBC_STUBS ON)

# Bootstrap variant: downloads and caches the pinned SDK release before
# describing the toolchain.
include("${CMAKE_CURRENT_LIST_DIR}/wasi-sdk/wasi-sdk-bootstrap.toolchain.cmake")
