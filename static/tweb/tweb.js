import * as wasm from "./tweb_bg.wasm";
import { __wbg_set_wasm } from "./tweb_bg.js";
__wbg_set_wasm(wasm);
export * from "./tweb_bg.js";
