" let g:seoul256_light_background = 256
" colorscheme seoul256-light
syntax on
set t_Co=256
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum
set termguicolors
set t_ZH=[3m
set t_ZR=[23m
let g:one_allow_italics = 1
let g:gruvbox_italic = 1
colorscheme one
set background=light

let g:airline_powerline_fonts = 1
let g:airline_theme = 'one'
let g:airline_section_z = "\ue0a1:%l/%L:%c"
let g:airline#extensions#keymap#enabled = 0
" let g:airline#extensions#keymap#short_codes = {'russian-jcukenwin': 'ru'}
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_theme = 'airline'
let g:tmuxline_preset = 'minimal'

