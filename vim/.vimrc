scriptencoding utf-8

if has('win32') || has('win64')
    set runtimepath^=~/.vim
    set runtimepath+=~/.vim/after
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug: https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" vim-airline
Plug 'vim-airline/vim-airline'

" vim-airline-themes
Plug 'vim-airline/vim-airline-themes', { 'on': 'AirlineTheme dark' }
let g:airline_powerline_fonts = 1

" tpope/vim-repeat
Plug 'https://github.com/tpope/vim-repeat'

" tpope/vim-commentary
Plug 'https://github.com/tpope/vim-commentary'

" vim-fugitive
Plug 'https://github.com/tpope/vim-fugitive'

" vim-gitgutter
Plug 'https://github.com/airblade/vim-gitgutter'

" nerdtree
Plug 'preservim/nerdtree'
let NERDTreeShowHidden=1

" nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" vim-devicons
Plug 'ryanoasis/vim-devicons'

" w0ng/vim-hybrid
Plug 'https://github.com/w0ng/vim-hybrid'

" dracula/vim
Plug 'https://github.com/dracula/vim', { 'as': 'dracula' }

call plug#end()

" vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
set background=dark
autocmd BufEnter * colorscheme dracula
autocmd BufEnter *.bat colorscheme hybrid
autocmd BufEnter *.sh colorscheme hybrid

set autoindent
set smartindent

set backspace=indent,eol,start
set ruler

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
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
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
