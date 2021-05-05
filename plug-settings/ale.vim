function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors  
    
    return l:counts.total == 0 ? 'OK' : printf(
            \   '%d⨉ %d⚠ ',
            \   all_non_errors,
            \   all_errors
            \)
endfunction
set statusline+=%=
set statusline+=\ %{LinterStatus()}

let g:ale_linters = {
    \ 'python': ['flake8','pylint'],
    \}

let g:ale_fixers =  {
    \ 'python': ['yapf'],
    \}

let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

let g:ale_sign_column_always = 1
let g:ale_sign_error = '=>'
let g:ale_sign_warning = '--'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
