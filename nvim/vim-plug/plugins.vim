" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  " Files
  Plug 'tpope/vim-eunuch'
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  Plug 'tpope/vim-commentary'
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'
  " auto set indent settings
  Plug 'tpope/vim-sleuth'

  " Text Navt)€ýS(multiple-cursors-wait)a€kb0:wigation
  Plug 'justinmk/vim-sneak'
  Plug 'unblevable/quick-scope'
  " Plug 'easymotion/vim-easymotion'
  " Add some color
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'junegunn/rainbow_parentheses.vim'
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  " Auto pairs for '(' '[' '{' 
  Plug 'jiangmiao/auto-pairs'
  " Closetags
  Plug 'alvan/vim-closetag'
  " Themes
  Plug 'chriskempson/base16-vim'
  Plug 'flrnd/candid.vim'
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Status Line
  Plug 'vim-airline/vim-airline'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Find and replace
  Plug 'brooth/far.vim'
  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " Vista
  Plug 'liuchengxu/vista.vim'
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  " Zen mode
  Plug 'junegunn/goyo.vim'
  " Making stuff
  Plug 'neomake/neomake'
  " Snippets
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  " Vim multiple cursor
  " Plug 'terryma/vim-multiple-cursors'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " Delete other buffers
  Plug  'vim-scripts/BufOnly.vim'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
