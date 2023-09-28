+++
title = "typstfmt, a formatter for the Typst language!"
date = 2023-09-22
+++

If you didn't know, [Typst](https://typst.app/docs/) is a new typesetting software concurrent to LateX. It's brand new, It's written in Rust and I love it. 

I went ahead and wrote a formatter for it which you can see showcased below. 
It has <span style="display: inline;" id="count">more than 100 </span> github stars at the moment.

Formatters are complicated to design cause there is a huge amount of factors to take in consideration and many opportunities to add spacing in code that is still valid.

Typst is challenging to format due to it's different modes of code.

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


