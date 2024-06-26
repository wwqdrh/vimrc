## Install

```bash
curl -sL https://raw.githubusercontent.com/wwqdrh/vimrc/main/install.sh | sudo bash -x
# or
curl -sL https://raw.githubusercontent.com/wwqdrh/vimrc/main/install.sh | sudo bash -x --network [proxyip:port]
# or
# if use lower ubuntu version, example ubuntu 16
curl -sL https://raw.githubusercontent.com/wwqdrh/vimrc/main/install.sh | sudo bash -x --version v16.16.0
```

## Uninstall

```bash
rm -rf ~/.vim

mv ~/.vimrc.bak ~/.vimrc
```

## Features

* Edit many files at the same time
* File Browser on left side of screen
* Move between files in center screen
* View status of the current GIT repo, if applicable
* Additional features when running under MacVIM
* Quickly navigate to files using a fuzzy finder

### language support

> because coc.nvim, you must have a node, so add it in install.sh

设置代理

```bash
:CocConfig

```

`c`

```bash
sudo apt-get install clangd
#or
:CocCommand clangd.install
#or
curl -L https://github.com/clangd/clangd/releases/download/18.1.3/clangd-linux-18.1.3.zip -o clangd.zip
unzip clangd.zip
sudo mv clangd_18.1.3/lib/clang /usr/local/lib
sudo mv clangd_18.1.3/bin/* /usr/local/bin

# invim
:CocInstall coc-clangd
```

### Leader Key

- Space

### Switching between files (Buffers)

* Use `<Leader>q` to close the current file (a different file will appear in its place)
* Use `Ctrl h` `Ctrl l` to move between open files
 * `Ctrl Left` `Ctrl Right` also works for switching between files
 * While in MacVIM, you can swipe left and right to switch between open files
* Use `Cmd Shift N` (or `Alt n` in Linux GVim) to open a new empty buffer

### Viewports (Windows/Splits)

* Use `<Leader>h` `<Leader>j` `<Leader>k` `<Leader>l` to navigate between viewports
* Use `<Leader>Q` to close the current window (you probably won't ever need to do this)
* Use `<Leader>n` to toggle the file browser
* Use `Ctrl P` to perform a recursive fuzzy filename search
* Use `<Leader>a` and type a phrase to search to search based on content within your files (quote and escape if needed)

### File Browser (NERDTree)

* Use `<Leader>n` to toggle the file browser
* Use standard movement keys to move around
* Use `Ctrl j` and `Ctrl k` to move between siblings (aka skip over children in expanded folders)
* Use `C` to make the highlighted node the current working directory
* Use `:Bookmark BookmarkName` to bookmark the current selection
* Use `B` to toggle the bookmark menu
* Use `?` if you'd like some NERDTree documentation
* Use `o` to open the selected file in a new buffer
* Use `t` to open the selected file in a new tab
