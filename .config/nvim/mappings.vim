" better split navigation
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
nnoremap <M-H> <C-w>H
nnoremap <M-J> <C-w>J
nnoremap <M-K> <C-w>K
nnoremap <M-L> <C-w>L
" clear search results
nnoremap <leader>n :noh<cr>

" reload configuration
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

" easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
nmap <leader>a <Plug>(EasyAlign)
xmap <leader>a <Plug>(EasyAlign)

" quickfix mapping, nextfile jumps
nmap <Up> <Plug>(coc-diagnostic-prev)
nmap <Down> <Plug>(coc-diagnostic-next)
nnoremap <silent> <Left> :cpfile<CR>
nnoremap <silent> <Right> :cnfile<CR>

imap <C-f> <Esc><Plug>(coc-format)i

" project
" toggle a horizontal split and switch to it (,h)
nnoremap <silent> <tab> :NERDTreeToggle<CR>
" open a horizontal split and switch to it (,h)
nnoremap <silent> <leader>tr :NERDTreeFind<CR>

" window
" split vertically
nnoremap <leader>wv <C-w>v<C-w>l
" split horizontally
nnoremap <leader>ws <C-w>s<C-w>j
" navigate windows
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wH <C-w>H
nnoremap <leader>wL <C-w>L

" buffer
nnoremap <Leader><Tab> :e#<CR> " switch to last buffer
nnoremap <leader>bb :CtrlPBuffer<CR>:
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>b/ :CtrlPLine<CR>


" toggles
" list chars
noremap <Leader>ti :set list!<CR>:echo 'Toggled special characters'<CR>
" spell checks
noremap <Leader>tse :set spell! spelllang=en<CR>:echo 'Toggled en spell check'<CR>
noremap <Leader>tsd :set spell! spelllang=de<CR>:echo 'Toggled de spell check'<CR>

" git
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gl :GV<CR>
nnoremap <leader>gm :Gmerge<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gvc :GV!<CR>
nnoremap <leader>gvq :GV?<CR>
nnoremap <leader>gw :Gwrite<CR>

" Copy stuff
vnoremap <C-c> "+y
