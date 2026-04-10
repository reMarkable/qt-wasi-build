include("${CMAKE_CURRENT_LIST_DIR}/wasi-sdk/wasi-sdk.toolchain.cmake")

initialize_wasi_toolchain(
  WIT_BINDGEN_TAG "v0.53.1"
  WASMTIME_TAG "v41.0.3"
  WASM_TOOLS_TAG "v1.245.1"
  WASI_SDK_TAG "wasi-sdk-30"
  TARGET_TRIPLET "wasm32-wasi"
  ENABLE_EXPERIMENTAL_SETJMP ON
  ENABLE_EXPERIMENTAL_STUBS ON
)

