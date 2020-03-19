if has("autocmd")
  " Auto git commit vimwiki on save
  augroup vimwiki
    au! BufRead ~/vimwiki/index.md !cd ~/vimwiki && git pull
    au! BufWritePost ~/vimwiki/* !cd ~/vimwiki && git commit -m "Auto commit of %:t." "%"
  augroup END
endif
