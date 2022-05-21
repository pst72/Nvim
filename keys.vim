" Keys Maps and Functions

inoremap <expr> <Tab> pumvisible() ? "\\<C-n>" : "\\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"
snoremap <expr> <Tab> pumvisible() ? "\\<C-n>" : "\\<Tab>"
snoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"
inoremap <Tab> <C-R>=pumvisible() ? "\<lt>C-N>" : "\<<lt>Tab>"<CR>

nmap sw :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true


let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'path_html': '~/Documents/vimwiki/html/', 'auto_toc': 1}]

function! CleverTab()
        if strpart ( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
          return "\<Tab>"
        else
          return "\<C-n>"
        endif
    endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>


" function to simplify standard writing
function! Writer()
       setlocal spell spelllang=en_us
       setlocal formatoptions=t1
       setlocal textwidth=80
       setlocal noautoindent
       setlocal shiftwidth=5
       setlocal tabstop=5
       setlocal expandtab
endfunction
com! WR call Writer()


     
function! Warn_caps()
    setlocal echohl WarningMsg
    setlocal echohl 'Caps Lock is On'
    setlocal echohl None
     
endfunction


