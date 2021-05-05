
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

" Better  window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"indenting
vnoremap < <gv
vnoremap > >gv

" hate escape more than anything else
inoremap jj <Esc>

"Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

"disable the arrow keys to navigate. This is very useful when you want to
"adapt to 'hjkl'
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

""With the arrow keys you can resize your splits
nnoremap <silent> <C-Up> :resize -2<CR>
nnoremap <silent> <C-Down> :resize +2<CR>
nnoremap <silent> <C-Left> :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

"with leader w you save the file if it have a name set. The second command
""open your config file
nnoremap <leader>w :w<CR>
nnoremap <leader>p :source %<CR>

"you split a terminal with a size of 15
vnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>

"" Move to the next buffer
" Move to the prevoius buffer
nnoremap <tab> :bnext<CR>
nnoremap <s-tab> :bprevious<CR>

" " Close the current buffer
" "create a new tab
nnoremap <leader>qq :bdelete<CR>
nnoremap <leader>t :tabe<CR>

" "vertical split
" "horizontal split
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>sp :sp<CR>

" " clear search results
nnoremap <silent> // :noh<CR>

"Fugitive
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
