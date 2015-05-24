set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
"------------------------------------
Bundle 'Shougo/neocomplcache'
  let g:neocomplcache_enable_at_startup=1
  let g:neoComplcache_disableautocomplete=1
  let g:neocomplcache_enable_underbar_completion = 1
  let g:neocomplcache_enable_camel_case_completion = 1
  let g:neocomplcache_enable_smart_case=1
  let g:neocomplcache_min_syntax_length = 3
  let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
  set completeopt-=preview

  imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
  smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
  imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
  smap <C-l> <Plug>(neocomplcache_snippets_force_jump)
  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType c setlocal omnifunc=ccomplete#Complete
  if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
  endif
  let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'
"------------------------------------
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
"------------------------------------
Bundle 'ervandew/supertab'
  let g:SuperTabDefultCompletionType='context'
  let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
  let g:SuperTabRetainCompletionType=2
"------------------------------------

" snippets
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'edsono/vim-matchit'
" 快速跳转 默认按键\\fa \\w \\e \\b
Bundle 'Lokaltog/vim-easymotion'
  let g:EasyMotion_leader_key = '<Leader>'


"--------------
" Fast editing
"--------------
" ds{ 删除大括号
Bundle 'tpope/vim-surround'

" 注释插件 \+c+空格
Bundle 'scrooloose/nerdcommenter'
  let NERDSpaceDelims=1
  " nmap <D-/> :NERDComToggleComment<cr>
  let NERDCompactSexyComs=1

" 按等号冒号对齐插件 :Tab/=
Bundle 'godlygeek/tabular'

" 缩进提示线 默认快捷键 \ig
Bundle 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_auto_colors = 1
  let g:indent_guides_guide_size = 1
  let g:indent_guides_enable_on_vim_startup = 1

"--------------
" IDE features
"--------------
"
" 文件检索器
Bundle 'scrooloose/nerdtree'
  let NERDChristmasTree=0
  let NERDTreeWinSize=30
  let NERDTreeChDirMode=2
  let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
  " let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
  let NERDTreeShowBookmarks=1
  let NERDTreeWinPos = "right"

" 标签页插件 CTRL+[+数字
Bundle 'humiaozuzu/TabBar'
  let g:Tb_MaxSize = 2
  let g:Tb_TabWrap = 1
  hi Tb_Normal guifg=white ctermfg=white
  hi Tb_Changed guifg=green ctermfg=green
  hi Tb_VisibleNormal ctermbg=252 ctermfg=235
  hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" 函数名插件
Bundle 'majutsushi/tagbar'
  let g:tagbar_left=1
  let g:tagbar_width=30
  let g:tagbar_autofocus = 1
  let g:tagbar_sort = 0
  let g:tagbar_compact = 1

Bundle 'mileszs/ack.vim'

Bundle 'kien/ctrlp.vim'
  set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  let g:ctrlp_root_markers = ['']

Bundle 'tpope/vim-fugitive'

" 状态栏插件
Bundle 'Lokaltog/vim-powerline'
  let g:Powerline_symbols = 'fancy'

Bundle 'bronson/vim-trailing-whitespace'

filetype plugin indent on     " required!
