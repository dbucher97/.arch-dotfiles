set shiftwidth=2
set softtabstop=2
set expandtab

function! s:FormatOnSave()
  " Dart code formatting on save
  if get(g:, "dart_format_on_save", 0)
    call dart#fmt("-l ".&textwidth)
  endif
endfunction

autocmd BufWritePre * call s:FormatOnSave()
autocmd BufWritePost * silent! :!kill -SIGUSR1 `<~/.flutter.pid`

" === coc-flutter ===
nnoremap <leader>fr :CocCommand flutter.run<CR>
nnoremap <leader>fR :CocCommand flutter.dev.hotReload<CR>
nnoremap <leader>fh :!kill -SIGUSR2 `<~/.flutter.pid`<CR>
nnoremap <leader>fH :CocCommand flutter.dev.hotRestart<CR>
nnoremap <leader>fp :CocCommand flutter.pub.get<CR>
nnoremap <leader>fl :CocCommand flutter.dev.openDevLog<CR>
nnoremap <leader>fq :CocCommand flutter.dev.quit<CR>

