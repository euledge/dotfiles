"Vim Bundles "  {{{1
"How to set up .
"git clone http://github.com/gmarik/vundle.git ~/.vim/vundle.git
"
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'tsukkee/unite-tag'
Bundle 'h1mesuke/unite-outline'
Bundle 'basyura/unite-rails'
Bundle 'ujihisa/unite-colorschema'
Bundle 'Shougo/vimshell'
Bundle 'Shougo/vimproc'
Bundle 'cucumber.zip'
Bundle 'thinca/vim-quickrun'
Bundle 'leshill/vim-json'
Bundle 'taku-o/vim-ro-when-swapfound'
Bundle 'taku-o/vim-toggle'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ujihisa/rdoc.vim'
Bundle 'smartchr'
Bundle 'ref.vim'
Bundle 'pekepeke/unite-fileline'
Bundle 'pekepeke/titanium-vim'
Bundle 'Gist.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/Colour-Sampler-Pack'

filetype plugin indent on     " required!
" }}}

" Japanese " {{{1
" 文字エンコーディング
set fileencodings=utf-8,iso-2022-jp-3,eucjp-ms,cp932,ucs-bom,default,latin1
" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif
" }}}

"BASIC " {{{1
" set gfn=ゆたぽん（コーディング）\ 10
set gfn=ゆたぽん（COD）K:h13

set wrap
set wildmenu
set smartindent
set ignorecase smartcase
" 行番号
set number
set foldmethod=marker
" インクリメンタルサーチ
set incsearch
" 検索結果のハイライト
set hlsearch
" インデント
set cindent
" タブの設定
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set showmatch
set nobackup
set splitright
set splitbelow
set visualbell
set noequalalways
set showtabline=2

syntax enable

" キーバインド
" insertモードからノーマルモードに戻る
imap <C-j> <C-[>
nmap <C-j> <C-[>
" 矢印キー禁止
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Right> <Nop>
" normalモードでもカーソル位置で改行
noremap <CR> i<CR><ESC>
" ウィンドサイズの変更
nnoremap <silent> <S-Left>  :5wincmd <<CR>
nnoremap <silent> <S-Right> :5wincmd ><CR>
nnoremap <silent> <S-Up>    :5wincmd -<CR>
nnoremap <silent> <S-Down>  :5wincmd +<CR>

" helpの言語の優先順位
set helplang=ja,en

" window size
" please push Alt+F10

" COLOR
"colorscheme molokai
"let g:molokai_original=1
syntax enable
colorscheme delek
"set background=dark
"colorscheme solarized
"hi TabLine     term=reverse cterm=reverse ctermfg=white ctermbg=black
"hi TabLineSel  term=bold cterm=bold
"hi TabLineFill term=reverse cterm=reverse ctermfg=white ctermbg=black

" % def ~ end
runtime macros/matchit.vim

" indent guide enable
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=1

" ESC + ESC = no hi
" nnoremap <Esc><Esc> :nohlsearch<CR>

"inoremap <expr> = smartchr#loop(' = ', '=', ' == ')
"autocmd FileType ruby inoremap <expr> = smartchr#loop(' = ', ' => ', '=', ' == ')
"autocmd FileType eruby inoremap <expr> = smartchr#loop('<%= ', ' = ', '=', ' == ')
"autocmd FileType haml inoremap <expr> = smartchr#loop('= ', ' => ', '=', ' == ')
inoremap <expr> , smartchr#one_of(', ', ',')


set antialias                " アンチエイリアシング

" 挿入モード時、ステータスラインの色を変える
"autocmd InsertEnter * highlight StatusLine ctermfg=red
"autocmd InsertLeave * highlight StatusLine ctermfg=white

"タブ文字、行末など不可視文字を表示する
"set list
"listで表示される文字のフォーマットを指定する
"set listchars=eol:$,tab:>\ ,extends:<

" 挿入モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guibg=#AE81FF guifg=#080808
autocmd InsertLeave * highlight StatusLine guifg=#808080 guibg=#080808
augroup END

" 検索語を中央に表示する
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" 保存する際に行末スペースを削除
autocmd BufWritePre * :%s/\s\+$//ge

" バッファのキー設定
nnoremap bn :bprevious<CR>
nnoremap bm :bnext<CR>
nnoremap bd :bdelete<CR>

" タブの設定
nnoremap [tabcmd]  <nop>
nmap     t [tabcmd]

nnoremap <silent> [tabcmd]u :<C-u>tabnext<cr>
nnoremap <silent> [tabcmd]U :<C-u>tabNext<cr>
nnoremap <silent> [tabcmd]y :<C-u>tabprevious<cr>
nnoremap <silent> [tabcmd]Y :<C-u>tabprevious<cr>
nnoremap <silent> [tabcmd]e :<C-u>tabedit<cr>
nnoremap <silent> [tabcmd]c :<C-u>tabclose<cr>
nnoremap <silent> [tabcmd]o :<C-u>tabonly<cr>
nnoremap <silent> [tabcmd]s :<C-u>tabs<cr>

" }}}

" Other " {{{1
" rails.vim " {{{2
"let g:rails_level=4
let g:rails_default_file="app/controllers/application_controller.rb"
" }}}

" neocomplcache.vim " {{{2
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" For cursor moving in insert mode(Not recommended)
inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"

" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
" }}}

" , is: シェルを起動
nnoremap <silent>  ,is :VimShell<CR>
" , irb: irbを非同期で起動
nnoremap <silent> ,irb :VimShellInteractive irb<CR>
" , ti: titaniumを非同期で起動
nnoremap <silent> ,ti :VimShellInteractive titanium<CR>
"

" unite.vim "{{{2
nnoremap    [unite]   <Nop>
nmap     f [unite]
" 入力モードで開始する
let g:unite_enable_start_insert=0
" 縦分割で開始する
let g:unite_enable_split_vertically=1
" バッファ一覧
noremap <silent> [unite]b :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" 最近使ったファイルの一覧
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
" ファイルとバッファ
nnoremap <silent> [unite]u :<C-u>Unite buffer file_mru<CR>
" 全部
nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" FuzzyFinder
nnoremap <silent> [unite]z :<C-u>Unite file_rec<CR>
" Unite rails
nnoremap <silent> [unite]r :<C-u>Unite rails/
nnoremap <silent> [unite]rmo :<C-u>Unite rails/model<CR>
nnoremap <silent> [unite]rcon   :<C-u>Unite rails/controller<CR>
nnoremap <silent> [unite]rvi :<C-u>Unite rails/view<CR>
nnoremap <silent> [unite]rhel :<C-u>Unite rails/helper<CR>
nnoremap <silent> [unite]rlib :<C-u>Unite rails/lib<CR>
nnoremap <silent> [unite]rdb :<C-u>Unite rails/db<CR>
nnoremap <silent> [unite]rconfig :<C-u>Unite rails/config<CR>
nnoremap <silent> [unite]rlog :<C-u>Unite rails/log<CR>
" タブで開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('tabopen')
" 分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC> :q<CR>
" }}}

let mapleader=","
autocmd BufRead, BufNewFile *.rd, *.rdoc set filetype=rdoc

" quickrun.vim " {{{2
" quickrun rspec
let g:quickrun_config = {}
let g:quickrun_config._ = {'runner' : 'vimproc'}
let g:quickrun_config['rspec/bundle'] = {
  \ 'type': 'rspec/bundle',
  \ 'filetype': 'rspec-result',
  \ 'command': 'rspec',
  \ 'cmdopt': "--format progress",
  \ 'exec': "bundle exec %c %o %s %a"
  \}
" quickrun cucumber
let g:quickrun_config['cucumber/bundle'] = {
  \ 'type': 'cucumber/bundle',
  \ 'filetype': 'cucumber-result',
  \ 'command': 'cucumber',
  \ 'cmdopt': "--format progress",
  \ 'exec': "bundle exec %c %o %s %a"
  \}
function! RSpecQuickrun()
    let b:quickrun_config = {'type' : 'rspec/bundle', 'split' : ''}
    nnoremap <expr><silent> <Leader>lr "<Esc>:QuickRun -cmdopt \"--color --format progress -l " . line(".") . "\"<CR>"
endfunction
autocmd BufReadPost *_spec.rb call RSpecQuickrun()

function! CucumberQuickrun()
    let b:quickrun_config = {'type' : 'cucumber/bundle', 'split' : ''}
    nnoremap <expr><silent> <Leader>lr "<Esc>:QuickRun -cmdopt \"--format progress -l " . line(".") . "\"<CR>"
endfunction
autocmd BufReadPost *.feature call CucumberQuickrun()
" }}}
" }}}
