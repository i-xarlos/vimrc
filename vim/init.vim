" call plug#begin("~/.nvim/plugged")
call plug#begin('~/AppData/local/nvim/autoload')
" Plugin Section
" theme
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material' 
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'luochen1990/rainbow' 
Plug 'ayu-theme/ayu-vim'
Plug 'ntk148v/vim-horizon'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'sheerun/vim-polyglot'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'tiagovla/tokyodark.nvim'
Plug 'ghifarit53/tokyonight-vim'

" Pairs
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow' 
"
"tools
"Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-markdown' 
Plug 'kevinoid/vim-jsonc'

"text
Plug 'rektrex/vim-conceal-rust' 

"Navigation
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colorscheme for files
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"search
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'gfanto/fzf-lsp.nvim'
Plug 'airblade/vim-rooter'
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

set buftype=
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
set formatoptions-=cro
set clipboard=unnamedplus
set ruler
set relativenumber
set sw=2
set cursorline
set tabstop=2

set modifiable
set write

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

" Turn on syntax highlighting
syntax on
"colorscheme onedark
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext

set background=dark        " for the light version
let g:one_allow_italics = 1 " I love italic for comments
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum
"colorscheme one

let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

"colorscheme tokyonight

let g:tokyodark_transparent_background = 0
let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_enable_italic = 1
let g:tokyodark_color_gamma = "2.0"

"colorscheme tokyodark

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_menu_selection_background = "red"

"colorscheme tokyonight

hi rainbowcol1 guifg=#123456
" set sensible highlight matches that don't obscure the text
:highlight MatchParen cterm=underline ctermbg=black ctermfg=NONE
:highlight MatchParen gui=underline guibg=black guifg=NONE


"one#highlight(group, fg, bg, attribute)
"call one#highlight('vimLineComment', '00ff00', '', 'none')

"colorscheme horizon
"colorscheme dracula

set bg=dark
let g:gruvbox_termcolors=16
"colorscheme gruvbox

set background=dark
let g:gruvbox_material_palette = 'original'
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_curso = 'orange'
"let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_spell_foreground = 'colored'
let g:gruvbox_material_visual = 'reverse'
let g:gruvbox_material_menu_selection_background = 'orange'

if has('termguicolors')
    set termguicolors
endif

if get(g:, 'colors_name', 'default') == 'gruvbox-material'
    let g:terminal_color_0  = '#282828'
    let g:terminal_color_1  = '#ea6962'
    let g:terminal_color_2  = '#a9b665'
    let g:terminal_color_3  = '#d8a657'
    let g:terminal_color_4  = '#7daea3'
    let g:terminal_color_5  = '#d3869b'
    let g:terminal_color_6  = '#89b482'
    let g:terminal_color_7  = '#d4be98'
    let g:terminal_color_8  = '#7c6f64'
    let g:terminal_color_9  = '#402120'
    let g:terminal_color_10 = '#34381b'
    let g:terminal_color_11 = '#e78a4e'
    let g:terminal_color_12 = '#0e363e'
    let g:terminal_color_13 = '#928374'
    let g:terminal_color_14 = '#374141'
    let g:terminal_color_15 = '#ddc7a1'
endif

colorscheme gruvbox-material


" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction

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

let g:python3_host_prog = 'C:\Python39\python.exe'
let g:python_host_prog = 'C:\Python27\python.exe'
set pyxversion=3
set pyx=3



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


let FZF_DEFAULT_COMMAND = 'ag -g ""'
let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH



"coc.nvim config 
let g:coc_global_extensions = [
			\'coc-snippets',
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
			\'coc-highlight',
			\]


" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"Use 'coc-snippets' for custom snippets
":CocInstall coc-snippets // only edit
":CocCommand snippets.editSnippets

let g:airline_powerline_fonts = 1

"prettier
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" TTSERVER

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
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
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)


" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>t  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" End TTS


let mapleader = " "
nmap <Leader>s <Plug>(easymotion-s2)
"nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :wq!<CR>
nmap <Leader>q :q!<CR>

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

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()

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
"let g:airline_theme = 'night_owl'
"let g:airline_theme = "tokyonight"
let g:airline_theme = 'gruvbox_material'

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
" \ call textobj#sentence#init()

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


" scriptencoding utf-8

" if exists('g:no_vim_fancy_text') || !has('conceal') || &enc != 'utf-8'
 " finish
" endif

"syntax match rsFancyOperator "!=" conceal cchar=≠
"syntax match rsFancyOperator "<=" conceal cchar=≤
"syntax match rsFancyOperator ">=" conceal cchar=≥
"syntax match rsFancyOperator "<<" conceal cchar=«
"syntax match rsFancyOperator ">>" conceal cchar=»
"syntax match rsFancyOperator "::" conceal cchar=∷
"syntax match rsFancyOperator "->" conceal cchar=→
"syntax match rsFancyOperator "=>" conceal cchar=⇒
"syntax match rsFancyOperator "||" conceal cchar=∥

"hi! link rsFancyOperator Operator
"hi! link Conceal Operator

setlocal conceallevel=1

