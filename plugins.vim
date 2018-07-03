call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'trevordmiller/nova-vim'           " Great colorscheme
Plug 'MaxMEllon/vim-jsx-pretty'

" General
Plug 'tpope/vim-surround'                                                       " surrounding related things
Plug 'tpope/vim-fugitive'                                                       " git mappings
Plug 'tpope/vim-repeat'                                                         " repeat things
Plug 'tpope/vim-vinegar'                                                        " navigation
Plug 'tpope/vim-commentary'                                                     " comment stuff in/out
Plug 'Shougo/neosnippet.vim'                                                    " enable snippets
Plug 'Shougo/neosnippet-snippets'                                               " default snippets
Plug 'ctrlpvim/ctrlp.vim'                                                       " fuzzy finder
Plug 'alvan/vim-closetag'                                                       " Close tags
Plug 'editorconfig/editorconfig-vim'                                            " read .editorconfig files
Plug 'jiangmiao/auto-pairs'                                                     " auto close those little shits
Plug 'vim-airline/vim-airline'                                                  " statusbar thingy
Plug 'w0rp/ale'
Plug 'Chiel92/vim-autoformat'           " Autoformat on save
Plug 'Yggdroot/indentLine'              " Show indent guides
Plug 'fatih/vim-go'                     " Golang tools
Plug 'junegunn/fzf'                     " Selection UI for LanguageClient-neovim
Plug 'junegunn/fzf.vim'                 " Selection UI for LanguageClient-neovim

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }                   " superb async completion
Plug 'Shougo/neco-vim', { 'for': 'vim' }                                        " viml completion
Plug 'zchee/deoplete-jedi', { 'for': 'python' }                                 " jedi for python
Plug 'zchee/deoplete-go', { 'do': 'make'}                                       " gocode completions

call plug#end()
