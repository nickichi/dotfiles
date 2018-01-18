" 使うaugroup
" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始

" プラグインリストを収めた TOML ファイル
let g:rc_dir    = expand("~/.dotfiles/nvim/")
let s:toml      = g:rc_dir . '/dein.toml'
let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir, [s:toml])

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

"
" その他の設定
"

" color
colorscheme elflord

" 基礎
set encoding=utf8
set noswapfile
set scrolloff=5
set backspace=indent,eol,start
set laststatus=2

" Tabをスペース4つに展開＆Tabの設定
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

" 行数
set number
set list
set smartcase

" 検索
set incsearch
set ignorecase
:set hlsearch

" 移動を表示行で
nnoremap k   gk
nnoremap j   gj
vnoremap k   gk
vnoremap j   gj

" i modeでも移動
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>

" match
set showmatch
set matchtime=1

" 数値を増やすマッピング
nnoremap + <C-a>
nnoremap - <C-x>

" syntax
syntax on

