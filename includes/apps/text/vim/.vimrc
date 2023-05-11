" vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" 配色方案（Colorscheme）和状态行（Statusline）
Plug 'altercation/vim-colors-solarized'               " [vim-colors-solarized](https://vimawesome.com/plugin/vim-colors-solarized-ours)
Plug 'vim-airline/vim-airline'                        " [vim-airline](https://vimawesome.com/plugin/vim-airline-superman)
Plug 'vim-airline/vim-airline-themes'                 " [vim-airline-themes](https://vimawesome.com/plugin/vim-airline-themes)

" 模糊搜索（Fuzzy Find）
"Plug 'ctrlpvim/ctrlp.vim'                            " (A) ctrlp   [ctrlp.vim](https://vimawesome.com/plugin/ctrlp-vim-everything-has-changed)
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " (B) fzf     [fzf](https://vimawesome.com/plugin/fzf)
"Plug 'junegunn/fzf.vim'                              " (B) fzf     [fzf.vim](https://vimawesome.com/plugin/fzf-vim)
Plug 'yggdroot/leaderf'                               " (C) LeaderF [LeaderF](https://vimawesome.com/plugin/leaderf)

" 代码高亮（Code Highlight）
Plug 'luochen1990/rainbow'                            " 彩虹括号 [rainbow](https://vimawesome.com/plugin/rainbow-you-belong-with-me)
Plug 'sheerun/vim-polyglot'                           " 语言支持 [vim-polyglot](https://vimawesome.com/plugin/vim-polyglot)

" 代码补全（Code Completion）
Plug 'neoclide/coc.nvim', {'branch': 'release'}       " (A) coc [coc.nvim](https://vimawesome.com/plugin/coc-nvim)
"Plug 'ycm-core/youcompleteme'                        " (B) ycm [youcompleteme](https://vimawesome.com/plugin/youcompleteme)

" 代码片段（Code Snippets）
Plug 'neoclide/coc-snippets'                          " (A) coc       [coc-snippets](https://vimawesome.com/plugin/coc-snippets)
Plug 'honza/vim-snippets'                             " (A) coc       [vim-snippets](https://vimawesome.com/plugin/vim-snippets)
"Plug 'shougo/neosnippet.vim'                         " (B) deo       [neosnippet.vim](https://vimawesome.com/plugin/neosnippet-vim)
"Plug 'shougo/neosnippet-snippets'                    " (B) deo       [neosnippet-snippets](https://vimawesome.com/plugin/neosnippet-snippets)
"Plug 'garbas/vim-snipmate'                           " (C) snipmate  [vim-snipmate] (https://vimawesome.com/plugin/vim-snipmate-mine)
"Plug 'honza/vim-snippets'                            " (C) snipmate  [vim-snippets] (https://vimawesome.com/plugin/vim-snippets)
"Plug 'sirver/ultisnips'                              " (D) ultisnips [UltiSnips](https://vimawesome.com/plugin/ultisnips)
"Plug 'honza/vim-snippets'                            " (D) ultisnips [vim-snippets](https://vimawesome.com/plugin/vim-snippets)

" 静态代码分析（Static Code Analysis）
Plug 'dense-analysis/ale'                             " (A) ale     [ale](https://vimawesome.com/plugin/ale-be-who-we-are)
"Plug 'neomake/neomake'                               " (B) neomake [neomake](https://vimawesome.com/plugin/neomake-impatience-and-laziness)

" 其它
Plug 'airblade/vim-gitgutter'            " Git 集成 [vim-gitgutter](https://vimawesome.com/plugin/vim-gitgutter)
Plug 'godlygeek/tabular'                 " 文本对齐 [Tabular](https://vimawesome.com/plugin/tabular)
"Plug 'junegunn/goyo.vim'                " 黑屋子模式
"Plug 'junegunn/limelight.vim'           " 焦点外虚化
Plug 'mhinz/vim-startify'                " 起始页 [vim-startify](https://vimawesome.com/plugin/vim-startify)
Plug 'scrooloose/nerdtree'               " 导航窗格 [The NERD tree](https://vimawesome.com/plugin/nerdtree-red)
Plug 'tpope/vim-commentary'              " 注释编辑 [commentary.vim](https://vimawesome.com/plugin/commentary-vim)
Plug 'tpope/vim-repeat'                  " 更好的重复 [repeat.vim](https://vimawesome.com/plugin/repeat-vim)
Plug 'tpope/vim-speeddating'             " 日期增减 [speeddating.vim](https://vimawesome.com/plugin/speeddating-vim)
Plug 'tpope/vim-surround'                " 括号编辑 [surround.vim](https://vimawesome.com/plugin/surround-vim)
Plug 'vim-scripts/YankRing.vim'          " 剪贴板可视化 [YankRing.vim](https://vimawesome.com/plugin/yankring-vim)
Plug 'yianwillis/vimcdoc'                " 中文文档 [vimcdoc](https://vimawesome.com/plugin/vimcdoc-speak-now)

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 默认配置
source $VIMRUNTIME/defaults.vim

" A

" 自动缩进
set autoindent

" E

" 编码
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8

" L

" 呈现某些空白符
" eol      U+23CE ⏎ Return Symbol
" tab      U+205E ⁞ Vertical Four Dots
" space    U+00B7 · Middle Dot
" trail
" extends  U+2026 … Horizontal Ellipsis
" precedes U+2026 … Horizontal Ellipsis
" conceal
" nbsp     U+23B5 ⎵ Bottom Square Bracke
set listchars=eol:⏎,tab:⁞\ ,space:·,extends:…,precedes:…,nbsp:⎵
set list

" N

" 显示行号
"set number

" T

" 制表符
"set tabstop=4
"set expandtab
