Vim�UnDo� DLC)�'�����|�;���x2N�_wH�2��^�   T   4vim.g.completeopt = 'menu,menuone,noselect,noinsert'   T                          a���    _�                        A    ����                                                                                                                                                                                                                                                                                                                                                             a�,    �         Q      Eau InsertEnter * let updaterestore=&updatetime | set updatetime=100005��       A                 �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�1|     �         Q    �         Q    5��                          I              <       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�1�     �         R      ;vim.cmd([[autocmd BufRead,BufNewFile *.md setlocal spell]])5��              &           [      &               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�1�     �         R      vim.cmd([[autocmd ]])5��                         [                     �                        ^                    �                        [                    �       '                 p                    �       '              
   p             
       �       /                 x                    �       /                 x                    �       9                 �                    �       9                 �                    �       9                 �                    �       B              
   �             
       �       B       
          �      
              �       M              	   �             	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�29     �         R    �         R    5��                          �              Z       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�2O     �         S      Yvim.cmd([[autocmd Filetype qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>]])5��              9           �      9               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�2Z    �         S       vim.cmd([[autocmd Filetype qf]])5��                      
   �              
       �       "                 �                    5�_�      	              4       ����                                                                                                                                                                                                                                                                                                                                                             a� �     �   3   5   S      vim.o.wrap = false5��    3                    �                    5�_�      
           	   6       ����                                                                                                                                                                                                                                                                                                                                                             a�     �   5   7   S    �   6   7   S    5��    5                      �                     5�_�   	              
   6       ����                                                                                                                                                                                                                                                                                                                                                             a�     �   5   7   T      vim.wo.signcolumn = 'yes'5��    5                     �                     5�_�   
                 6       ����                                                                                                                                                                                                                                                                                                                                                             a�!     �   5   7   T      vim.o.signcolumn = 'yes'5��    5          
          �      
              �    5                 
   �             
       5�_�                    6       ����                                                                                                                                                                                                                                                                                                                                                             a�0    �   5   7   T      vim.o.statusline = 'yes'5��    5                    �                    5�_�                    B       ����                                                                                                                                                                                                                                                                                                                                                             a�S�     �   B   D   T    �   B   C   T    5��    B                                           5�_�                    C       ����                                                                                                                                                                                                                                                                                                                                                             a�S�    �   B   D   U      vim.o.expandtab = true5��    B          	          	      	              5�_�                    G       ����                                                                                                                                                                                                                                                                                                                                                             a��'     �   F   H   U      (vim.o.undodir = '~/.config/nvim/undodir'5��    F                    j                    �    F                 	   k             	       5�_�                    T        ����                                                                                                                                                                                                                                                                                                                                                             a��s     �   T   V   U    �   T   U   U    5��    T                      �              7       5�_�                    U        ����                                                                                                                                                                                                                                                                                                                                                             a���     �   T   V   V      6  vim.g.completeopt = 'menu,menuone,noselect,noinsert'5��    T                      �                     5�_�                    U        ����                                                                                                                                                                                                                                                                                                                                                             a���     �   T   V   V      5 vim.g.completeopt = 'menu,menuone,noselect,noinsert'5��    T                      �                     5�_�                          ����                                                                                                                                                                                                                                                                                                                                                v       a���     �         V      -- OPTIONS SETTINGS5��                        �                    5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                v       a���     �         V      -- OPTION'S SETTINGS5��       	                  �                     5�_�                    O   	    ����                                                                                                                                                                                                                                                                                                                                                v       a��'     �   N   O          vim.o.spell = true5��    N                      Q                     5�_�                    T       ����                                                                                                                                                                                                                                                                                                                                                v       a���     �   S   U   U      4vim.g.completeopt = 'menu,menuone,noselect,noinsert'5��    S                    �                    5�_�                     T       ����                                                                                                                                                                                                                                                                                                                                                v       a���    �              T   $vim.cmd('filetype plugin indent on')   Ovim.cmd [[autocmd TextYankPost * lua vim.highlight.on_yank {on_visual = true}]]   
vim.cmd([[   *    augroup vimrc-remember-cursor-position           autocmd!   j        autocmd BufReadPost * if line ("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif        augroup END       ]])   vim.api.nvim_exec(   [[   au CursorHoldI * stopinsert   Eau InsertEnter * let updaterestore=&updatetime | set updatetime=15000   .au InsertLeave * let &updatetime=updaterestore   ]],false   )   ;vim.cmd([[autocmd BufRead,BufNewFile *.md setlocal spell]])   Yvim.cmd([[autocmd Filetype qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>]])   0vim.cmd([[autocmd Filetype qf set nobuflisted]])           -- OPTIONS SETTINGS   vim.o.hidden = true   vim.o.termguicolors = true   vim.opt.termguicolors = true   vim.o.title = false   vim.o.showmode = true   vim.o.showcmd = true   (vim.o.shortmess = vim.o.shortmess .. 'c'   #vim.o.whichwrap = 'b,s,<,>,[,],h,l'   vim.o.pumheight = 10   vim.o.fileencoding = 'utf-8'   vim.o.cmdheight = 2   vim.o.splitbelow = true   vim.o.splitright = true   vim.o.conceallevel = 0   vim.o.showtabline = 2   vim.o.backup = false   vim.o.writebackup = false   vim.o.swapfile = false   vim.o.updatetime = 300   vim.o.timeoutlen = 200   vim.o.clipboard = 'unnamedplus'   vim.o.hlsearch = true   vim.o.incsearch = true   vim.o.ignorecase = true   vim.o.smartcase = true   vim.o.infercase = true   vim.o.scrolloff = 100   vim.o.sidescrolloff = 3   vim.o.mouse =  'a'   vim.o.wrap = true   vim.o.cursorline = true   vim.o.statusline = '%F'   vim.wo.signcolumn = 'yes'   vim.o.colorcolumn = '80'   vim.o.tabstop = 2   vim.bo.tabstop = 2   vim.o.softtabstop = 2   vim.o.shiftwidth = 2   vim.bo.shiftwidth = 2   vim.o.autoindent = true   vim.bo.autoindent = true   vim.o.smartindent = true   vim.bo.smartindent = true   vim.o.expandtab = true   vim.o.spell = true   vim.bo.expandtab =true   vim.o.smarttab = true   vim.o.undofile = true   1vim.o.undodir = '/home/pi72/.config/nvim/undodir'   vim.o.wildmenu = true   -- vim.wo.wildcharm = '<Tab>'   (vim.o.wildmode = 'longest:full:lastused'   !vim.o.nrformats = 'bin,hex,alpha'   vim.o.autochdir = true   vim.o.number = true   vim.o.relativenumber = true   vim.opt.list = true   %vim.opt.listchars:append("space:⋅")   #vim.opt.listchars:append("eol:↴")   2vim.opt.dictionary:append("/usr/share/dict/words")       6vim.opt.completeopt = 'menu,menuone,noselect,noinsert'    5��          S       R   6   #       �      �      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��&     �         V      --OPTION'SOPTIONS SETTINGS5��                        �                    5��