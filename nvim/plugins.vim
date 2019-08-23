" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.vim/plugged')
" monokai pro theme
Plug 'phanviet/vim-monokai-pro'
"Go-Plugin
Plug 'fatih/vim-go'
"Vue-Plugin
Plug 'posva/vim-vue'
"vim-Javascript
Plug 'pangloss/vim-javascript'
"Coc-Autocompletion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Auto Mkdir
Plug 'benizi/vim-automkdir'
"Denite
Plug 'Shougo/denite.nvim'
"Vim autosave
Plug 'vim-scripts/vim-auto-save'
"Nerdtree
Plug 'scrooloose/nerdtree'
call plug#end()
