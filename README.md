# Zrc - my vim configuration file

My personal configuration for vim. Should work on OSX.

##  Quick installation

- clone this repo to ~/.vim/
- link ~/.vimrc to ~/.vim/\_vimrc

```shell
cd ~/.vim
git clone https://github.com/zmen/zrc.git .
ln -s ~/.vim/_vimrc ~/.vimrc
git submodule init && git submodule update // pull Vundle.vim
vim
:PluginInstall
```

## Feature

- **keybinding** `C-j`,`C-k`,`C-h`,`C-l` for switching between windows
- **keybinding** `jk` has been bind to `Esc`
- **keybinding** take `space` as leader key
- **keybinding** `<leader>ev` to edit vimrc
- **keybinding** `<leader>sv` to reload vimrc
- **plugin:vim-airline**
- **plugin:nerdtree** folder tree
- **plugin:emmet-vim** `Ctrl``y``,` to autocomplete
- **plugin:vim-fugitive**
- **plugin:tabular**
- **plugin:vim-markdown-preview**
- **plugin:ctrlp**
- **plugin:speeddating**
- **plugin:JsDoc**

## File Type Support

- javascript by **vim-javascript**, **javascript-libraries-syntax**
- vue by **vim-vue**
- markdown by **vim-markdown**
- yaml by **vim-yaml**
- orgmode by **vim-orgmode**
