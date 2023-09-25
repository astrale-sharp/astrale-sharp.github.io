mod utils;
use wasm_bindgen::prelude::*;
use typstfmt_lib::*;
mod highlight;


#[wasm_bindgen]
pub fn format_default(s : &str) -> String {
    format(s, Config::default())
}

#[wasm_bindgen]
pub fn highlight(s : &str) -> String {
    let root = typst_syntax::parse(s);
    
    highlight::highlight_html(&root)
}

