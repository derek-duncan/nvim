# NeoVim Configuration
My Neovim configuration utilizes the community's packages to build a beautiful and intuitive editor.

## Installation Instructions
I have only used this setup on OSX, so please submit a PR if something is different on windows.

1. [Install Neovim](https://neovim.io/)
1. [Install iTerm2](https://www.iterm2.com/)
1. (Optional) Install eslint with `npm install eslint -g`
1. Clone this repository into your `~/.config` directory. `cd ~/.config && git clone https://github.com/derek-duncan/nvim.git`
1. Open iTerm.
1. Install a patched font from [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) to utilize icons in the editor. Run `open ~/.config/nvim/fonts/Fura\ Code\ Light\ Nerd\ Font\ Complete.otf` to install the included font in this repo.
1. Open iTerm preferences and select `Fura Code Light Nerd Font Complete` in `Profile>Text>Font`.
1. Install [the_silver_searcher](https://github.com/ggreer/the_silver_searcher) for [ag.nvim](https://github.com/rking/ag.vim) plugin. `brew install the_silver_searcher`
1. Begin Neovim. `nvim`
1. Install Neovim packages. `:PlugInstall`
1. Restart Neovim. `:q` then `nvim`

## Useful Commands and Mappings in Neovim
* Quickly edit the Neovim configuration.
  * `<space>ev` to open the configuration file.
  * `<space>sv` to reload the configuration file into Neovim.
* Comment a line/lines with `<space>cl` ([NERDCommenter](https://github.com/scrooloose/nerdcommenter)).
* Uncomment a line/lines with `<space>cu` ([NERDCommenter](https://github.com/scrooloose/nerdcommenter)).
* Open fuzzy file search with `<C-p` ([CTRLP](https://github.com/ctrlpvim/ctrlp.vim)).
* Open NERDTree with `<space>nt` to explore the file directory ([NERDTree](https://github.com/scrooloose/nerdtree)).

Enjoy!
