if has("autocmd")
  " Auto git commit vimwiki on save
  augroup vimwiki
    au! BufRead ~/vimwiki/index.md !git pull
    au! BufWritePost ~/vimwiki/* !git add "%";git commit -m "Auto commit of %:t." "%";git push
  augroup END
endif
