function configure_editor(id, readonly, syntax) {
  return CodeMirror.fromTextArea(document.getElementById(id), {
    lineNumbers: true,
    mode: syntax,
    matchBrackets: true,
    matchTags: {bothTags: true},
    theme: 'dracula',
    indentUnit: 2,
    autoCloseTags: true,
    autoCloseBrackets: true,
    foldGutter: true,
    gutters: ["CodeMirror-linenumbers", "CodeMirror-foldgutter"],
    readOnly: readonly,
    extraKeys: {"Alt-F": "findPersistent"}
  });
}