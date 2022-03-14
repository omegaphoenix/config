# Instructions
https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

# Setup
* curl -Lks https://raw.githubusercontent.com/omegaphoenix/config/master/install.sh | /bin/bash

* Install tmux
  - `sudo apt install tmux`
  - `sudo pacman -S tmux`

* Install tmux plugins `https://github.com/tmux-plugins/tpm`
  * `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
  * `prefix` + <kbd>I</kbd> to install tmux plugins
  * `prefix` + <kbd>r</kbd> to reload tmux

* Install vundle `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* Install vim plugins `:PluginInstall`

* Install zsh
  - `sudo apt install zsh`
  - `sudo pacman -S zsh`
* Install ohmyzsh `https://ohmyz.sh/`
  `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
* Install zsh theme
  - `https://github.com/romkatv/powerlevel10k`
  - `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`
* Install zsh autocomplete plugin
  - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

* Install tig
  Might need to install ncurses `sudo apt install libncurses5-dev libncursesw5-dev`
  `https://github.com/jonas/tig`

