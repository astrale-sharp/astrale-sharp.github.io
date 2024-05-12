+++
title = "Typstfmt"
description = "Typst formatter made in Rust"
[extra]
order = 0
image = "assets/typstfmtpeek.gif"
+++


The above demonstration shows how the [tablex](https://github.com/PgBiel/typst-tablex) library is formatted.

[Typst](https://typst.app/docs/) is a typesetting language written in Rust and aiming to replace  TeX/LaTeX.

I made the first and most used formatter of the language so far [<sup>1</sup>](#footnote), it has <span style="background-color: gray"> <span id="count">more than 200 </span> github stars as of right now. </span>

Formatters can be hard to write and maintain and are complex software, Typst is especially challenging given it does care about whitespace unlike many other languages, it's multi mode makes it challenging to keep the semantic untouched. This is why typstfmt has more than two hundreds tests.

You can have a preview of my work here:

{{ format_editor() }}

<script type="module">
  import { Octokit } from "https://esm.sh/@octokit/core";
  const octokit = new Octokit({
    // auth: 'YOUR-TOKEN'
  })
  const { data } = await octokit.request('GET /repos/astrale-sharp/typstfmt', {
    type : "public",
  // owner: 'OWNER',
  // repo: 'REPO',
  headers: {
    'X-GitHub-Api-Version': '2022-11-28'
  }
  })
  document.getElementById("count").innerText = data.watchers_count
</script>


<div style="margin-bottom: 200px"></div>

<div id="footnote">
  <p> [1] : I haven't updated it in a while and typstyle seems like a very good successor.
  </p>
</div>