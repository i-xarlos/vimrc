set nocompatible
set nolist
set rnu
set buftype=
set number
set nowrap
set mouse=a
set numberwidth=1
set clipboard=unnamed
set encoding=utf-8
set pumheight=10
set iskeyword+=-
set cursorline
set t_Co=256
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
set cindent
set expandtab
set smartindent
set autoindent
set laststatus=0
set background=dark
set showcmd
set showmatch
set laststatus=2
set updatetime=300
set timeoutlen=1000
set ttimeoutlen=0
set clipboard=unnamedplus
set ruler
set relativenumber
set sw=2
set cursorline
set tabstop=2
set belloff=all
set signcolumn=yes
set cmdheight=2
set backspace=indent,eol,start
set ffs=unix,dos
set autoread
set colorcolumn=140

" TextEdit might fail if hidden is not set.
set hidden
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
filetype off                  " required

" json files comments
autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd BufRead,BufNewFile *.json set filetype=jsonc

" Turn off backup
set nobackup
set noswapfile
set nowritebackup
" Always show tabs
set showtabline=2
set noshowmode
"open split panes to right and below
set splitright
set splitbelow
set modifiable

" Set compatibility to Vim only
" Turn on syntax highlighting
"if has("sintax")
  "syntax on
"endif
if exists("syntax_on")
    syntax reset
endif
" Use new regular expression engine
set re=0



call plug#begin()

	"themes
	Plug 'gruvbox-community/gruvbox'
	Plug 'sainnhe/gruvbox-material' 
  Plug 'ghifarit53/tokyonight-vim'
	

	"Markdown and lua files
	Plug 'tpope/vim-liquid'
	Plug 'tpope/vim-markdown'

	"Navigation
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Pairs
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	"tools
	Plug 'scrooloose/nerdcommenter' "comment text
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'djoshea/vim-autoread'

  "search
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

  Plug 'dense-analysis/ale'
call plug#end()


 if has('termguicolors')
        set termguicolors
 endif

" For dark version.
set background=dark
color tokyonight


" for gruvbox_material 
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_cursor = 'blue'
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_foreground = 'mix'
let g:gruvbox_material_spell_foreground = 'colored'
"let g:airline_theme = 'gruvbox_material'
"colorscheme gruvbox-material

"for tokyonight
let g:tokyonight_style = "storm"
"let g:tokyonight_italic_functions = 1
"let g:tokyonight_enable_italic = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
let g:lightline = {'colorscheme' : 'tokyonight'}
let g:tokyonight_transparent_background = 0

"Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }
let g:airline_theme = 'tokyonight'
colorscheme tokyonight

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'typescript': ['prettier'],
\}
let g:ale_fix_on_save = 1

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

highlight CocFloating ctermbg=Blue 
"highlight Pmenu ctermbg=gray guibg=gray
highlight PmenuSel ctermbg=black guibg=black
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

autocmd CursorHold * silent call CocActionAsync('highlight')
"autocmd ColorScheme * highlight CocHighlightText     ctermfg=LightMagenta    guifg=LightMagenta
"
"" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let mapleader = " "
"nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>

" Use a line cursor within insert mode and a block cursor everywhere else.
" "
" " Reference chart of values:
" "   Ps = 0  -> blinking block.
" "   Ps = 1  -> blinking block (default).
" "   Ps = 2  -> steady block.
" "   Ps = 3  -> blinking underline.
" "   Ps = 4  -> steady underline.
" "   Ps = 5  -> blinking bar (xterm).
" "   Ps = 6  -> steady bar (xterm).
 let &t_SI = "\e[6 q"
 let &t_EI = "\e[2 q"


 "coc.nvim config 
 let g:coc_global_extensions = [
    \'coc-css', 
    \'coc-emmet',
    \'coc-html', 
    \'coc-json', 
    \'coc-tsserver',
    \'coc-eslint',
    \'coc-pairs',
    \'coc-vetur',
    \'coc-explorer',
    \'coc-git',
    \'coc-vimlsp',
    \'coc-diagnostic',
    \'coc-spell-checker',
    \'coc-snippets',
\]
    ""\'coc-prettier', 
" lightline
let g:lightline = {
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'ctrlpmark', 'git', 'diagnostic', 'cocstatus', 'filename', 'method' ]
  \   ],
  \   'right':[
  \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
  \     [ 'blame' ]
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \ }
\ }

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}

let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained', 
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'], 
\		},
\		'haskell': {
\			'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'], 
\		},
\		'vim': {
\			'parentheses_options': 'containedin=vimFuncBody', 
\		},
\		'perl': {
\			'syn_name_prefix': 'perlBlockFoldRainbow', 
\		},
\		'stylus': {
\			'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'], 
\		},
\		'css': 0, 
\	}
\}

" python
let g:python3_host_prog = 'C:\Python39\python.exe'
set pyxversion=3
set pyx=3

"airline_powerline_fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''


nmap <Leader>w :wq!<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>c :%s/\r//g<CR>
nmap <Leader>p :terminal powershell<CR>

nmap <space>e :CocCommand explorer<CR>
nmap <space>el :CocList explPresets<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" open terminal on leader+t
function! OpenTerminal()
    split term://Powershell
          vertical resize +50
endfunction
nnoremap <Leader>t :call OpenTerminal()<CR> 

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nmap <Leader>gd <Plug>(coc-definition)!
nmap <Leader>gr <Plug>(coc-references)

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)
"nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
noremap <leader>gs :CocSearch
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>>")<CR><CR>
noremap <leader>fs :Files<cr>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/.vimrc<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

"command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Prettier
"let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'crlf')

" tressitter
set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()

lua <<EOF

require'nvim-treesitter.configs'.setup {
  ensure_installed ={
    "python",
    "bash", 
    "regex", 
    "json",
    "json5",
    "lua", 
    "c", 
    "typescript", 
    "javascript", 
    "yaml", 
    "html", 
    "css", 
    "scss", 
    "c_sharp", 
    "tsx" 
    },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  highlight = { enable = true, },
  indent = { enable = true, },
  auto_install = true,
  rainbow = {
    enable = true,
    extended_mode = true, 
    max_file_lines = 1000, 
  },
  additional_vim_regex_highlighting = false
}

