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
set timeoutlen=500
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

" TextEdit might fail if hidden is not set.
set hidden
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

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
" Turn on syntax highlighting
syntax on



call plug#begin()

	"themes
	Plug 'gruvbox-community/gruvbox'
	Plug 'sainnhe/gruvbox-material' 
	

	"Markdown and lua files
	Plug 'tpope/vim-liquid'
	Plug 'tpope/vim-markdown'

	"Navigation
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Pairs
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'p00f/nvim-ts-rainbow'

	"Lint
	Plug 'w0rp/ale'

	"JSX
	Plug 'pangloss/vim-javascript'
	Plug 'mxw/vim-jsx'
	
	"tools
	Plug 'scrooloose/nerdcommenter' "comment text
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	
call plug#end()


 if has('termguicolors')
        set termguicolors
 endif

" For dark version.
set background=dark

let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_cursor = 'blue'
let g:gruvbox_material_transparent_background = 2
let g:airline_theme = 'gruvbox_material'

colorscheme gruvbox-material

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
    \'coc-prettier', 
    \'coc-tsserver',
    \'coc-pairs',
    \'coc-eslint',
    \'coc-vetur',
    \'coc-explorer',
    \'coc-git',
    \'coc-vimlsp',
    \'coc-diagnostic',
\]

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

"airline_powerline_fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

highlight Pmenu ctermbg=gray guibg=gray
highlight PmenuSel ctermbg=black guibg=black
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual
autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <Leader>w :wq!<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>c :%s/\r//g<CR>

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

command! -nargs=0 Prettier :CocCommand prettier.formatFile