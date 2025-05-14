version 6.0
let s:cpo_save=&cpo
set cpo&vim
inoremap <C-'> <Cmd>ToggleTerm
inoremap <F7> <Cmd>ToggleTerm
inoremap <C-W> u
inoremap <C-U> u
vnoremap 	 >gv
nnoremap  <Cmd>q!
nnoremap  <Cmd>silent! update! | redraw
nmap  d
xmap  / gc
nnoremap  trj :split term://bash npx jest
nnoremap  xl <Cmd>lopen
nnoremap  trs :split term://bash ~/.config/nvim/.dotfiles/serverless.sh
nnoremap  cht :split term://bash ~/.config/nvim/.dotfiles/cht.sh
nnoremap  lv <Cmd>VenvSelect
nnoremap  tf <Cmd>ToggleTerm direction=float
nnoremap  tv <Cmd>ToggleTerm size=80 direction=vertical
nnoremap  xq <Cmd>copen
nnoremap  pM <Cmd>MasonToolsUpdate
nnoremap  w <Cmd>w
nnoremap  Q <Cmd>confirm qall
nnoremap  q <Cmd>confirm q
nnoremap  n <Cmd>enew
nnoremap  e <Cmd>Neotree toggle
nnoremap  th <Cmd>ToggleTerm size=10 direction=horizontal
nmap  / gcc
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap \ <Cmd>split
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap gcO OVcx<Cmd>normal gccfxa<BS>
nnoremap gco oVcx<Cmd>normal gccfxa<BS>
xnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap | <Cmd>vsplit
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
tnoremap <F7> <Cmd>ToggleTerm
tnoremap <C-'> <Cmd>ToggleTerm
nnoremap <C-Q> <Cmd>q!
nnoremap <C-S> <Cmd>silent! update! | redraw
nnoremap <F7> <Cmd>execute v:count . "ToggleTerm"
nnoremap <C-'> <Cmd>execute v:count . "ToggleTerm"
nmap <C-W><C-D> d
vnoremap <S-Tab> <gv
inoremap <expr>  v:lua.require'nvim-autopairs'.completion_confirm()
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start,nostop
set clipboard=unnamedplus
set cmdheight=0
set completeopt=menu,menuone,noselect
set confirm
set copyindent
set diffopt=internal,filler,closeoff,inline:simple,linematch:40,algorithm:histogram,linematch:60
set expandtab
set fillchars=eob:\ 
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uu\ 
set nohlsearch
set ignorecase
set infercase
set jumpoptions=
set laststatus=3
set noloadplugins
set mouse=a
set packpath=/usr/share/nvim/runtime
set preserveindent
set pumheight=10
set runtimepath=~/.config/nvim,~/.local/share/nvim/site,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/lazydev.nvim,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/nvim-ts-autotag,~/.local/share/nvim/lazy/vim-illuminate,~/.local/share/nvim/lazy/nvim-autopairs,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/neoconf.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/todo-comments.nvim,~/.local/share/nvim/lazy/aerial.nvim,~/.local/share/nvim/lazy/mason-null-ls.nvim,~/.local/share/nvim/lazy/none-ls.nvim,~/.local/share/nvim/lazy/guess-indent.nvim,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/LuaSnip,~/.local/share/nvim/lazy/nvim-highlight-colors,~/.local/share/nvim/lazy/toggleterm.nvim,~/.local/share/nvim/lazy/mini.icons,~/.local/share/nvim/lazy/blink.cmp,~/.local/share/nvim/lazy/astrolsp,~/.local/share/nvim/lazy/nvim-lsp-file-operations,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/nui.nvim,~/.local/share/nvim/lazy/neo-tree.nvim,~/.local/share/nvim/lazy/mason-tool-installer.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/nvim-treesitter-textobjects,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/better-escape.nvim,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/heirline.nvim,~/.local/share/nvim/lazy/sqls.nvim,~/.local/share/nvim/lazy/astrocommunity,~/.local/share/nvim/lazy/snacks.nvim,~/.local/share/nvim/lazy/AstroNvim,~/.local/share/nvim/lazy/astrotheme,~/.local/share/nvim/lazy/astroui,~/.local/share/nvim/lazy/astrocore,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,~/.local/state/nvim/lazy/readme
set shiftround
set shiftwidth=0
set shortmess=cloFOsITtC
set noshowmode
set showtabline=2
set smartcase
set splitbelow
set splitright
set statusline=%{%v:lua.require'heirline'.eval_statusline()%}
set tabclose=uselast
set tabline=%{%v:lua.require'heirline'.eval_tabline()%}
set tabstop=2
set termguicolors
set timeoutlen=500
set title
set undofile
set updatetime=300
set virtualedit=block
set window=42
set nowritebackup
" vim: set ft=vim :
