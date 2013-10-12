if exists('s:loaded')
  finish
endif
let s:loaded = 1

let g:vimwiki_browsers=['konqueror', 'firefox']

let g:vimwiki_camel_case=0

let wiki = {}
let wiki.nested_syntaxes = {'python': 'python', 'sh': 'sh', 'lisp': 'lisp'}
let g:vimwiki_list = [wiki]

