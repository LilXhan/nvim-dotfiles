syntax on
set number
set encoding=utf-8
set mouse=a
set relativenumber
set termguicolors
" number of spaces in a <Tab>
set tabstop=2 shiftwidth=2 expandtab

" ----- Plugins


call plug#begin('~/.config/nvim/plugged')

" General
"
Plug 'kyazdani42/nvim-web-devicons'                " Devicons
Plug 'nvim-lualine/lualine.nvim'                   " Status line
Plug 'akinsho/bufferline.nvim'                     " Buffers
Plug 'machakann/vim-highlightedyank'               " Highlight yanked text
Plug 'kyazdani42/nvim-tree.lua'                    " File explorer

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" AutoCompletion

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" Plugins JavaScript
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }


" Plugins Files
" Plug 'preservim/nerdtree'

" Plug 'ryanoasis/vim-devicons'
" Plug 'kyazdani42/nvim-web-devicons'
" Plugin Indent
Plug 'lukas-reineke/indent-blankline.nvim'
"Plugins HTML
Plug 'mattn/emmet-vim'

call plug#end()


" ----Require Plugins Configs

lua require('xhan')

" ---- Colors 
set background=dark
colorscheme tokyonight

" ---- EMMET
"
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
let g:user_emmet_settings={
      \ 'javascript':{
        \      'extends': 'jsx'
            \}
        \}

" ---- PRETTIER
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
" nnoremap <C-D> :Prettier <CR>
" ----- NERDTREE
" let NERDTreeQuitOnOpen=1
command! -nargs=0 Eslint :CocCommand eslint.executeAutofix
nnoremap <C-D> :Eslint <CR>
nnoremap <C-S> :NvimTreeToggle <CR>

autocmd FileType html,css EmmetInstall


