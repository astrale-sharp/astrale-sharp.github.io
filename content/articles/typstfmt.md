+++
title = "typstfmt, un formateur pour Typst!"
date = 2023-09-22
+++


[Typst](https://typst.app/docs/) est un nouveau language de typesetting visant à remplacer TeX/LaTeX, écrit en Rust.

J'ai désigné et réalisé l'outil de formatage actuel du language, qui a pour travail de rendre le code déjà écrit plus lisible et esthétique. Il a <span style="background-color: var(--dimYellow);"> <span id="count">plus de 100 </span> étoiles github pour le moment. </span>

Les formateurs sont des outils très utiles mais difficile à produire, il y a beaucoup d'opportunité
de sauter des lignes lorsqu'ont réécrit le code et beaucoup de contexte à prendre en compte.
Il est aussi important de s'assurer que le code à la même sémantique après avoir été formaté. 

Typst en est un exemple particulièrement compliqué étant donnés ses modes de codes multiples.

Ci dessous, j'ai créé un éditeur de Typst qui vous montre à droite la version formatée du code.

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


