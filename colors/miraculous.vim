" Miraculous - A colorscheme Marinette Dupain-Cheng would love
" Ladybug reds, Parisian pinks, midnight blacks, and soft pastels
" inspired by her world of fashion, heroism, and romance

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'miraculous'
set background=dark

lua require('miraculous').setup()
