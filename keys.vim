" Keys Maps and Functions

inoremap <expr> <Tab> pumvisible() ? "\\<C-n>" : "\\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"
snoremap <expr> <Tab> pumvisible() ? "\\<C-n>" : "\\<Tab>"
snoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"
inoremap <Tab> <C-R>=pumvisible() ? "\<lt>C-N>" : "\<<lt>Tab>"<CR>

nmap sw :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>


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
    setlocal echohl "Caps Lock is On"
    setlocal echohl None
     
endfunction


"map("n", "<leader>nw", "<Plug>VimwikiIndex<CR>", { noremap = true, silent = true })
"map("n", "<leader>nt", "<Plug>VimwikiTabIndex<CR>", { noremap = true, silent = true })
"map("n", "<leader>ns", "<Plug>VimwikiUISelect<CR>", { noremap = true, silent = true })
"map("n", "<leader>ni", "<Plug>VimwikiDiaryIndex<CR>", { noremap = true, silent = true })
"map("n", "<leader>nh", "<Plug>Vimwiki2HTML<CR>", { noremap = true, silent = true })
"map("n", "<leader>nH", "<Plug>Vimwiki2HTMLBrowse<CR>", { noremap = true, silent = true })
"map("n", "<leader>nn", "<Plug>VimwikiGoto<CR>", { noremap = true, silent = true })
"map("n", "<leader>nd", "<Plug>VimwikiDeleteFile<CR>", { noremap = true, silent = true })
"map("n", "<leader>nr", "<Plug>VimwikiRenameFile<CR>", { noremap = true, silent = true })
"map("n", "<leader>nT", "<Plug>VimwikiTable<CR>", { noremap = true, silent = true })
"map("n", "<leader>nS", "<Plug>VimwikiSearchTags<CR>", { noremap = true, silent = true })
"map("n", "<leader>nf", "<Plug>VimwikiSearch<CR>", { noremap = true, silent = true })
"map("n", "<leader>ng", "<Plug>VimwikiGenerateLinks<CR>", { noremap = true, silent = true })
"map("n", "<leader>nc", "<Plug>VimwikiTOC<CR>", { noremap = true, silent = true })
