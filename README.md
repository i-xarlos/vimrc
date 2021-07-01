# vimrc
```
call plug#begin("~/.vim/plugged")
" Plugin Section
" theme
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'luochen1990/rainbow' 
Plug 'ayu-theme/ayu-vim'
Plug 'ntk148v/vim-horizon'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
"Plug 'sheerun/vim-polyglot'
"
"tools
"Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-markdown' 

"Navigation
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colorscheme for files
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'

" editorconfig
"Plug 'editorconfig/editorconfig-vim'

Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-wordy'
Plug 'reedes/vim-pencil'

"intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kiteco/vim-plugin' 

"Plug 'neoclide/coc.nvim', {'branch':'release','do': 'yarn install --frozen-lockfile'}
" Plug 'dense-analysis/ale' 
"typescript suport
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-surround'
"JSX
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

" Set compatibility to Vim only
set nocompatible
set nolist
set rnu

set number
set hidden
set nowrap
set mouse=a
set numberwidth=1
set clipboard=unnamed
set encoding=utf-8
scriptencoding latin1
set pumheight=10
set fileencodings=utf-8
set iskeyword+=-
set cursorline
set t_Co=256
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
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
set formatoptions-=cro
set clipboard=unnamedplus
set ruler
set relativenumber
set sw=2
set cursorline
set tabstop=2
set termguicolors

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

" Turn on syntax highlighting
syntax on
"colorscheme onedark
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext
colorscheme one
"set t_8b=^[[48;2;%lu;%lu;%lum
"set t_8f=^[[38;2;%lu;%lu;%lum
"one#highlight(group, fg, bg, attribute)
"call one#highlight('', 'cccccc', '666666', 'none')
"set background=dark " for the dark version
"colorscheme horizon
"colorscheme dracula
"colorscheme gruvbox
highlight Pmenu ctermbg=gray guibg=gray
highlight PmenuSel ctermbg=black guibg=black
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual
autocmd CursorHold * silent call CocActionAsync('highlight')
" ayu
let ayucolor="dark"
let g:onedark_terminal_italics = 1
let g:rainbow_active = 1
let g:onedark_color_overrides = {
\ "black": {"gui": "#2F343F", "cterm": "235", "cterm16": "0" },
\ "purple": { "gui": "#C678DF", "cterm": "170", "cterm16": "5" }
\}

" vim markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'liquid']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

" Set native comment markers in Liquid files
let liquid_ext = expand('%:e:e')
if liquid_ext =~ '\(ht\|x\)ml'
  set commentstring=<!--%s-->
elseif liquid_ext =~ 'css'
  set commentstring=/*%s*/
endif
"
" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Navigate to line
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Explorer


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


nmap <space>e :CocCommand explorer<CR>
nmap <space>el :CocList explPresets<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
"
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+n
function! OpenTerminal()
    split term://Powershell
          resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>  

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"search config
nnoremap <C-p> :FZF<CR>

let g:fzf_action = { 
			\'ctrl-t': 'tab split',  
			\'ctrl-s': 'split', 
			\'ctrl-v': 'vsplit'
			\} 


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

"Use 'coc-snippets' for custom snippets
":CocInstall coc-snippets // only edit
":CocCommand snippets.editSnippets

"set encoding=utf8
let g:airline_powerline_fonts = 1

"prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile


let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
"nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :wq!<CR>
nmap <Leader>q :q!<CR>

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

" kite
let g:kite_supported_languages = ['javascript']
let g:kite_auto_complete=0
set completeopt+=preview

" set not use arrows for normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" SELECT helper with tabs
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
"set guifont=Cascadia\ Code\ Pl\ Types:h11
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'night_owl'

" clear data files
	" C:\Users\ixarl\AppData\Local\nvim-data\swap

" Set native comment markers in Liquid files
let liquid_ext = expand('%:e:e')
if liquid_ext =~ '\(ht\|x\)ml'
  set commentstring=<!--%s-->
elseif liquid_ext =~ 'css'
  set commentstring=/*%s*/
endif


" Extend vim-liquid filetype setting for CSS and Javascript files
au BufNewFile,BufRead *.css,*.scss,*.js
  \ if getline(1) == '---' | set ft=liquid | endif

autocmd FileType markdown,text,liquid
  \ setlocal nocursorline nocursorcolumn |
  \ call textobj#sentence#init()

let g:pencil#wrapModeDefault = 'soft'
let g:pencil#textwidth = 80
let g:pencil#mode_indicators = {'hard': 'H', 'auto': 'A', 'soft': 'S', 'off': '',}

augroup Pencil
  autocmd!
  autocmd FileType markdown,liquid
  \ call pencil#init({ 'wrap': 'soft' })
  autocmd FileType text
  \ call pencil#init({ 'wrap': 'hard', 'autoformat': 0 })
augroup END

  augroup LiteCorrect
    autocmd!
    autocmd FileType markdown,text,liquid
    \ call litecorrect#init()
  augroup END

  augroup Wordy
    autocmd!
    autocmd FileType markdown,text,liquid
    \ nnoremap <buffer> [w :<C-u>PrevWordy<CR>
    autocmd FileType markdown,text,liquid
    \ nnoremap <buffer> ]w :<C-u>NextWordy<CR>
  augroup END
```

## CocConfig
```
{
  "explorer.width": 30,
  "explorer.autoExpandMaxDepth": 40,
  "explorer.icon.enableNerdfont": true,
  "explorer.previewAction.onHover": false,
  "explorer.keyMappings.global": {
    "<cr>": ["expandable?", "expand", "open"],
    "v": "open:vsplit"
  },
}
```
