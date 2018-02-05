"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/admin/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/admin/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
    "insert here your Neobundle plugins"
    NeoBundle 'scrooloose/nerdtree'
  call neobundle#end()
endif

"filetype plugin indent on

" シンタックスハイライト
syntax on

" エンコード, ファイルエンコード
set encoding=utf-8
set fileencoding=utf-8

set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac

"記号の文字が崩れる問題を解決"
set ambiwidth=double

" .swapファイルを作らない
set noswapfile

" バックアップファイルを作らない
set nowritebackup

" バックアップをしない
set nobackup

" インクリメンタルサーチを行う
set incsearch

" 小文字の検索でも大文字も見つかるようにする
set ignorecase

" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase

" 検索結果をハイライト
set hlsearch

" 対応括弧をハイライト表示する
set showmatch

" コマンドを画面最下部に表示する
set showcmd

set cursorline
set wildmenu
set history=5000
set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=%=
set statusline+=[ENC=%{&fileencoding}]
set statusline+=[LOW=%l/%L]
set laststatus=2

" 画面上でタブ文字が占める幅の指定
set tabstop=2

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
