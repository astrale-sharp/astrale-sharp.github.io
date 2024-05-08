  import {CodeJar} from './dist/codejar.js'  
  const editor = document.querySelector('.editor');
  const highlight = editor => {
    editor.innerHTML = Prism.highlight(editor.textContent, Prism.languages.javascript, 'javascript')
  }
  const jar = CodeJar(editor, highlight, {
      tab: '  ',
    })
  jar.updateCode(localStorage.getItem('code'))
  jar.onUpdate(code => {
      localStorage.setItem('code', code)
  })
