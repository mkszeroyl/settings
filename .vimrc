set encoding=utf-8
set autoindent 
set hlsearch
set nu
set backspace=indent,eol,start
"set listchars=eol:¬,tab:>·,trail:~
"set listchars=space:.
set list
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set cursorline
set cursorcolumn
set clipboard=unnamed
set tags=./tags,tags

" custom colors
function SetLinesDefault()
  hi CursorLine   cterm=NONE ctermbg=88 "ctermfg=15 
  "hi CursorColumn cterm=NONE ctermbg=88
endfunction
function SetLinesHighlight()
  hi CursorLine   cterm=NONE ctermbg=18 "ctermfg=15
"  hi CursorColumn cterm=NONE ctermbg=18 "ctermfg=15
endfunction

" hi clear CursorColumn
call SetLinesDefault()
autocmd InsertEnter * call SetLinesHighlight()
autocmd InsertLeave * call SetLinesDefault()

autocmd FileType typescriptreact setlocal ts=2 sts=2 sw=2 
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2

filetype on
syntax enable
if has("syntax")
        syntax on
endif
set background=dark
"colorscheme jellybeans
"colorscheme gruvbox
colorscheme molokai
"colorscheme seoul256
"colorscheme onedark

set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'isruslan/vim-es6'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'myhere/vim-nodejs-complete'
Plug 'vim-scripts/taglist.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'prettier/vim-prettier', {'do':'yarn install', 'branch': 'release/1.x'}
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'blueyed/vim-diminactive'
Plug 'prabirshrestha/async.vim'
Plug 'wakatime/vim-wakatime'
Plug 'fatih/vim-go'
Plug 'gevans/vim-ginkgo'
Plug 'bubujka/emmet-vim'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'nvie/vim-flake8'
Plug 'bagrat/vim-buffet'
Plug 'leafgarland/typescript-vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'rust-lang/rust.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/seoul256.vim'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'
Plug 'tomasr/molokai'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'liuchengxu/vista.vim'
Plug 'evanleck/vim-svelte'

call plug#end()

"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'
"Plugin 'isRuslan/vim-es6'
"Plugin 'vim-airline/vim-airline'
"Plugin 'scrooloose/nerdtree'
"Plugin 'stanangeloff/php.vim'
"Plugin 'shawncplus/phpcomplete.vim'
"Plugin 'myhere/vim-nodejs-complete'
"Plugin 'valloric/youcompleteme'
"Plugin 'taglist.vim'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'prettier/vim-prettier'
"Plugin 'majutsushi/tagbar'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'tpope/vim-fugitive'
"Plugin 'blueyed/vim-diminactive'
"Plugin 'hushicai/tagbar-javascript.vim'
"Plugin 'wakatime/vim-wakatime'
"Plugin 'prabirshrestha/async.vim'
"Plugin 'prabirshrestha/vim-lsp'
"Plugin 'fatih/vim-go'
"Plugin 'gevans/vim-ginkgo'
"Plugin 'mattn/emmet-vim'
"call vundle#end()

let g:vista#executives = ['coc', 'ctags', 'lcn', 'vim_lsp']

let g:syntastic_python_checkers=['flake8']
let g:flake8_show_in_file=1


filetype plugin indent on

let g:coc_global_extensions = ['coc-tsserver']
let g:ycm_confirm_extra_conf = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

hi CocCodeLens guifg=White

let g:svelte_indent_script = 1
let g:svelte_indent_style = 1

let g:diminactive_use_colorColumn = 0
let g:molokai_original = 0 

"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|dist\'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|\.DS_Store|\.git|dist)$'

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.go,*.py,*.svelte PrettierAsync
let g:prettier#config#semi = 'false'
let g:prettier#config#print_width = 120
let g:prettier#config#single_quote = 'true'

nmap nerd :NERDTreeToggle<CR>
nmap tb :Tagbar<CR>
nmap <F8> :TagbarToggle<CR>
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua <<EOF
-- totally optional to use setup
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules","dist"}
  }
}
EOF

" 새로운 버퍼 열기
nnoremap <C-S-t> :enew<Enter>
