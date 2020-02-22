scriptencoding utf-8

if has('win32') || has('win64')
    set runtimepath^=~/.vim
    set runtimepath+=~/.vim/after
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug: https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes', { 'on': 'AirlineTheme dark' }
let g:airline_powerline_fonts = 1

Plug 'https://github.com/editorconfig/editorconfig-vim'
" Avoid error when using tpope/vim-fugitive: https://github.com/editorconfig/editorconfig-vim/issues/28
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

Plug 'https://github.com/tpope/vim-repeat'

Plug 'https://github.com/tpope/vim-fugitive'

Plug 'https://github.com/airblade/vim-gitgutter'

Plug 'preservim/nerdtree'
let NERDTreeShowHidden = 1
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 0
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

Plug 'jlanzarotta/bufexplorer'

if (has('patch-8.1.2114'))
  Plug 'liuchengxu/vim-clap'
endif

Plug 'ryanoasis/vim-devicons'

" thems

Plug 'https://github.com/w0ng/vim-hybrid'

Plug 'https://github.com/dracula/vim', { 'as': 'dracula' }

Plug 'https://github.com/joshdick/onedark.vim'

Plug 'haishanh/night-owl.vim'

call plug#end()

" vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Older Cygwin does not support True Color (256 colors).
if &term !=# 'cygwin'

  " Enable True Color: https://github.com/joshdick/onedark.vim
  if (empty($TMUX))
    if (has("nvim"))
      let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
    endif

    if (has("termguicolors"))
      set termguicolors
    endif
  endif

endif

syntax enable
set background=dark
autocmd BufEnter * colorscheme dracula
autocmd BufEnter *.gvimrc colorscheme onedark
autocmd BufEnter *.vimrc colorscheme onedark
autocmd BufEnter *.bat colorscheme hybrid
autocmd BufEnter *.sh colorscheme hybrid
autocmd BufEnter *.js colorscheme night-owl
autocmd BufEnter *.jsx colorscheme night-owl
autocmd BufEnter *.ts colorscheme night-owl
autocmd BufEnter *.tsx colorscheme night-owl

set autoindent
set smartindent

set backspace=indent,eol,start
set colorcolumn=80,120
set ruler

" Show non-printable characters.
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
autocmd VimEnter,WinEnter * highlight SpecialKey term=bold ctermbg=9 guibg=LightRed

syn match myTodo contained "\<\(TODO\|FIXME\|NOTE\|WARNING\|QUESTION\|DEBUG\|HACK\|XXX\):\?"
highlight def link myTodo Todo

set number
set nocursorline
set nocursorcolumn

" 文字コードをUFT-8に設定
set fileencoding=utf-8
" vim内部文字エンコーディング
set encoding=utf-8
" 改行コード自動判別優先順位
set fileformats=unix,dos,mac
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

" statusline
set statusline=%F%m%r%h%w%y%<%=[ENC=%{&fenc!=''?&fenc:&enc}][CHAR=%02B][%l:%c]
set laststatus=2

" 見た目系
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" コマンドラインの補完
set wildmode=list:longest

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
"set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
