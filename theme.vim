" Set term gui colors
highlight clear

if exists("syntax_on")
  syntax reset
endif

set tgc

let s:white = "#d4d4d5"
let s:darker_black = "#0a0d11"
let s:black = "#101317"
let s:black2 = "#191d22"
let s:one_bg = "#212428"
let s:one_bg2 = "#292c30"
let s:one_bg3 = "#33363a"
let s:grey = "#3e4145"
let s:grey_fg = "#45484c"
let s:grey_fg2 = "#4a4d51"
let s:light_grey = "#525559"
let s:red = "#f87070"
let s:baby_pink = "#ff8e8e"
let s:pink = "#ffa7a7"
let s:line = "#30303a"
let s:green = "#37d99e"
let s:vibrant_green = "#79dcaa"
let s:blue = "#7ab0df"
let s:nord_blue = "#87bdec"
let s:yellow = "#ffe59e"
let s:sun = "#ffeda6"
let s:purple = "#c397d8"
let s:dark_purple = "#b68acb"
let s:teal = "#63b3ad"
let s:orange = "#f0a988"
let s:cyan = "#50cad2"
let s:statusline_bg = "#15191e"
let s:lightbg = "#24282d"
let s:pmenu_bg = "#3bdda2"
let s:folder_bg = "#5fb0fc"

exe 'hi PMenu guibg=' . s:pmenu_bg . ' guifg= ' . s:black
exe 'hi Normal guibg=' . s:darker_black


