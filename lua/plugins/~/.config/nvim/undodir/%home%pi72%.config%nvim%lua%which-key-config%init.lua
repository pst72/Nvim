Vim�UnDo� yCh�yә���̙���vmӢ&"���R.�   �                                   a��x     _�                      V        ����                                                                                                                                                                                                                                                                                                                                                             a��w     �               �   local wk = require("which-key")   
wk.setup {     plugins = {       marks = false,       registers = false,   3    spelling = {enabled = false, suggestions = 20},   |    presets = {operators = false, motions = false, text_objects = false, windows = false, nav = false, z = false, g = false}     }   }   8local Terminal = require('toggleterm.terminal').Terminal   local toggle_float = function()   3  local float = Terminal:new({direction = "float"})     return float:toggle()   end   !local toggle_lazygit = function()   F  local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})     return lazygit:toggle()   end    local toggle_python = function()   D  local python = Terminal:new({cmd = 'python', direction = "float"})     return python:toggle()   end   local toggle_lua = function()   >  local lua = Terminal:new({cmd = 'lua', direction = "float"})     return lua:toggle()   end   local mappings = {     q = {":q<cr>", "Quit"},   !  Q = {":wq<cr>", "Save & Quit"},     w = {":w<cr>", "Save"},   6  r = {":Telescope resume<cr>", "Resume Last Search"},   .  c = {":CommentToggle<cr>", "Comment Lines"},      x = {":bdelete<cr>", "Close"},   8  E = {":e ~/.config/nvim/init.lua<cr>", "Edit config"},     l = {       name = "LSP",   7    i = {":LspInfo<cr>", "Connected Language Servers"},   H    k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},   9    K = {"<cmd>Lspsaga hover_doc<cr>", "Hover Commands"},   T    w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder"},   Z    W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder"},   l    l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', "List Workspace Folders"},   J    t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition"},   F    d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},   H    D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},   @    r = {'<cmd>lua vim.lsp.buf.references()<cr>', "References"},   .    R = {'<cmd>Lspsaga rename<cr>', "Rename"},   8    a = {'<cmd>Lspsaga code_action<cr>', "Code Action"},   L    e = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics"},   K    n = {'<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic"},   N    N = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic"}     },     f = {       name = "FIND",   ;    f = {":Telescope find_files<cr>", " Find Local Files"},   >    F = {":Telescope file_browser<cr>", " Find Buffer Files"},   4    b = {":Telescope buffers<cr>", " Find Buffers"},   :    o = {":Telescope oldfiles<cr>", " Find Recent Files"},   M    l = {":Telescope current_buffer_fuzzy_find<cr>", " Search Local Buffer"},   8    r = {":Telescope registers<cr>", " Find Registers"},   5    k = {":Telescope keymaps<cr>", " Find Key Maps"},   6    C = {":Telescope commands<cr>", " Find Commands"},   8    m = {":Telescope man_pages<cr>", " Find Man Pages"},   0    M = {":Telescope marks<cr>", " Find Marks"},   .    T = {":Telescope tags<cr>", " Find Tags"},   C    t = {":Telescope current_buffer_tags<cr>", " Find Local Tags"},   8    h = {":Telescope help_tags<cr>", " Find Help Tags"},   2    g = {":Telescope live_grep<cr>", " Live Grep"}     },     t = {       name = "TERMINAL",   +    s = {":ToggleTerm<cr>", "Split Below"},   ,    t = {toggle_float, "Floating Terminal"},   $    g = {toggle_lazygit, "LazyGit"},   "    p = {toggle_python, "Python"},       l = {toggle_lua, "Lua"}     },         a = {       name = "CHANGE",   <    c = {":Telescope colorscheme<cr>", " Find Colorscheme"},   <    v = {":Telescope vim_options<cr>", " Find Vim Options"},   3    p = {":TSPlaygroundToggle<cr>", " Playground"},   J    h = {":TSHighlightCapturesUnderCursor<cr>", " Highlight Under Cursor"}     },     s = {       name = "HOP",   "    w = {":HopWord<cr>", " Word"},   "    l = {":HopLine<cr>", " Line"},   (    p = {":HopPattern<cr>", " Pattern"},   #    c = {":HopChar2<cr>", " Char2"}     },   p = {     name = "PACKER",   *    i = {":PackerInstall<cr>", "Install"},   *    c = {":PackerCompile<cr>", "Compile"},   6    r = {":PackerClean<cr>", "Remove Unused Plugins"},   1    p = {":PackerProfile<cr>", "Packer Profile"},   $    s = {":PackerSync<cr>", "Sync"},   (    S = {":PackerStatus<cr>", "Status"},   '    u = {":PackerUpdate<cr>", "Update"}   },   W = {       name = "VIMWIKI",   )    w = {":VimwikiIndex<cr>", 'VimWiki'},   4    t = {":VimwikiTabIndex<cr>", 'VimWiki New tab'},   0    s = {":VimwikiUISelect<cr>", 'Choose Wiki'},   ,    i = {":VimwikiDiaryIndex<cr>", 'Diary'},   3    d = {":VimwikiDeleteFile<cr>", 'Delete Wiki' },   2    r = {":VimwikiRenameFile<cr>", 'Rename Wiki'},   6    b = {":Vimwiki2HTMLBrowse<cr>", 'Change To Html'},   2    S = {":VimwikiSearchTags<cr>", 'Search Tags'},   .    f = {":VWS ",'Search Wiki - ENTER QUERY'},   .    T = {":VimwikiTable<cr>", 'Create Table'},   8    g = {":VimwikiGenerateLinks<cr>", 'Generate Links'},   .    x = {":VimwikiTable<cr>", 'Create Table'},   .    y = {":VimwikiTable<cr>", 'Create Table'},   3    C = {":VimwikiTOC<cr>", 'Create TOC for Wiki'},           },   g = {       name = "GIT",   8     s = {"<cmd>Gitsigns stage_hunk<cr>", "Stage Hunk"},   B     u = {"<cmd>GitSigns undo_stage_hunk<cr>", "Undo Stage Hunk"},   8     r = {"<cmd>GitSigns reset_hunk<cr>", "Reset Hunk"},   <     R = {"<cmd>GitSigns reset_buffer<cr>", "Reset Buffer"},   <     p = {"<cmd>GitSigns preview_hunk<cr>", "Preview Hunk"},   K     b = {"<cmd>lua require'gitsigns'.blame_line{full=true}<cr>", "Blame"},   <     S = {"<cmd>GitSigns stage_buffer<cr>", "Stage Buffer"},   G     U = {"<cmd>Gitsigns reset_buffer_index<cr>", "Reset Buffer Index"}   }           }   "local opts = {prefix = '<leader>'}   wk.register(mappings, opts)5�5��