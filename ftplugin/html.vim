autocmd BufWritePre *.{,x}html call s:UpdateDate("xhtml")

if !exists("*s:UpdateDate")
  function s:UpdateDate(typefichier)
    let save_cursor = getpos(".")
    if a:typefichier == "xhtml"
      let position = search('<meta name="date')
      if position
        let date = strftime("%Y-%m-%d %H:%M:%S%z")
        let ligne = '  <meta name="date" content="DATE" />'
        call setline(position, substitute(ligne, "DATE\\C", date, ""))
      endif
      call setpos('.', save_cursor)
    endif
  endfunction
endif

let b:undo_ftplugin = "delfunction s:UpdateDate"
