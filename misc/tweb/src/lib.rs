mod utils;
use typstfmt_lib::*;
use wasm_bindgen::prelude::*;
mod highlight;

#[wasm_bindgen]
pub fn format_default(s: &str) -> String {
    format(s, Config::default())
}

#[wasm_bindgen]
pub fn highlight(s: &str) -> String {
    let root = typst_syntax::parse(s);

    highlight::highlight_html(&root)
}

#[wasm_bindgen]
pub fn is_erroneous(s: &str) -> bool {
    typst_syntax::parse(s).erroneous()
}
