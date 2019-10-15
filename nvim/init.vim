set mouse=a
set expandtab ts=2 sw=2 ai
set shiftwidth=2

call plug#begin('~/.local/share/nvim/plugged')

""""""""""""""""""""""""""""""""""""""""
" Elixir

Plug 'elixir-editors/vim-elixir'

Plug 'mhinz/vim-mix-format'
let g:mix_format_on_save = 1


""""""""""""""""""""""""""""""""""""""""
" Rust
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

""""""""""""""""""""""""""""""""""""""""
" Completion

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1


""""""""""""""""""""""""""""""""""""""""
" Snippets

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:neosnippet#snippets_directory = "~/.config/nvim/snippets"

""""""""""""""""""""""""""""""""""""""""
"



call plug#end()
