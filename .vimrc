"MAPPING
nnoremap zz :update<CR>

"TABS
set tabstop=4 "show
set softtabstop=4 "write
set expandtab "tabs = spaces

"MISCELLANOUS
set number "show line number
set wildmenu "visual autocomplete for cmd menu
set showmatch "highlight {([

"SEARCH
set incsearch "search as characters are entered 
set hlsearch "higlight matches

"PLUGINS
call plug#begin()
Plug 'preservim/NERDTree'
"Plug 'lervag/vimtex'
Plug 'dense-analysis/ale' "error analysis
Plug 'tmhedberg/matchit' "extended % matching for HTML, LaTeX
Plug 'jiangmiao/auto-pairs' "auto pair inserter + ligne
call plug#end()

"LATEX
nnoremap & :update<CR> :!pdflatex %<CR><CR><CR>
nnoremap <F1> :! evince $(echo % \|sed 's/tex$/pdf/') & disown<CR><CR>
