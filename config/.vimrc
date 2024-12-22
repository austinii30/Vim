set number     " line number
set ruler      " cursor location at bottom right
set hlsearch   " highlight search results
set is hls     " highlight when typing to search
set background=dark

syntax on


" ------------------------------ Cursor --------------------------------------
" increase cursor reaction time 
set ttimeout
set ttimeoutlen=1
set ttyfast

let &t_SI.="\e[6 q"   "SI = INSERT  mode
let &t_SR.="\e[4 q"   "SR = REPLACE mode
let &t_EI.="\e[2 q"   "EI = NORMAL  mode (ELSE)
"Ps = 1  -> blinking block (default).
"Ps = 2  -> steady block.
"Ps = 3  -> blinking underline.
"Ps = 4  -> steady underline.
"Ps = 5  -> blinking bar (xterm).
"Ps = 6  -> steady bar (xterm).

" reset the cursor on start (for older versions of vim, usually not required)
" the cursor does not perform as expected when vim starts (but does later)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
" ----------------------------------------------------------------------------



" ------------------------ ColorScheme: everforest ---------------------------
" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'hard'

" For better performance
let g:everforest_better_performance = 1

let g:everforest_enable_italic = 1

let g:everforest_cursor = 'red'
" ----------------------------------------------------------------------------





colorscheme everforest
