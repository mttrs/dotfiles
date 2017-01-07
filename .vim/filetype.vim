augroup filetypedetect
  au BufRead,BufNewFile *.rb setfiletype ruby
  au BufRead,BufNewFile *.go setfiletype go
  au BufRead,BufNewFile *.js setfiletype javascript
  au BufRead,BufNewFile *.coffee setfiletype cofee
augroup END
