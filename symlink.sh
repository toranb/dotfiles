#!/bin/bash

##
# You must delete all existing *zsh*, *vim* and *tmux* files and directories
# in your home folder for these new files to work
##
sudo rm -rf ~/.tmux > /dev/null 2>&1
sudo rm -rf ~/.zsh-custom > /dev/null 2>&1
sudo rm -rf ~/.gemrc > /dev/null 2>&1
sudo rm -rf ~/.ctags > /dev/null 2>&1
sudo rm -rf ~/.gitignore > /dev/null 2>&1
sudo rm -rf ~/.gitmodules > /dev/null 2>&1
sudo rm -rf ~/.gvimrc > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.rvmrc > /dev/null 2>&1
sudo rm -rf ~/.viminfo > /dev/null 2>&1
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.oh-my-zsh > /dev/null 2>&1
sudo rm -rf ~/.slate > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.zsh_prompt > /dev/null 2>&1
sudo rm -rf ~/.zsh-syntax-highlighting.zsh > /dev/null 2>&1
sudo rm -rf ~/highlighters > /dev/null 2>&1
sudo rm -rf ~/.ackrc > /dev/null 2>&1
sudo rm -rf ~/README > /dev/null 2>&1
sudo rm -rf ~/.antigen > /dev/null 2>&1
sudo rm -rf ~/.antigen.zsh > /dev/null 2>&1
if [ "$(uname)" = "Darwin" ]; then
    sudo rm -rf ~/.config > /dev/null 2>&1
fi
sudo rm -rf ~/.tigrc > /dev/null 2>&1
sudo rm -rf ~/.psqlrc


# Symlink the new config files. Assumes files are saved in ~/dotfiles
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/rvmrc ~/.rvmrc
if [ "$(uname)" = "Darwin" ]; then
    ln -s ~/dotfiles/tmux/mac_tmux ~/.tmux
    ln -s ~/dotfiles/config ~/.config
else
    ln -s ~/dotfiles/tmux/linux_tmux ~/.tmux
fi
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/ackrc ~/.ackrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gemrc ~/.gemrc
ln -s ~/dotfiles/ctags ~/.ctags
ln -s ~/dotfiles/psqlrc ~/.psqlrc
ln -s ~/dotfiles/tigrc ~/.tigrc

echo -n "Would you like to configure your git name and email? (y/n) => "; read answer
if [[ $answer = "Y" ]] || [[ $answer = "y" ]]; then
    echo -n "What is your git user name => "; read name
    git config --global user.name "$name"
    echo -n "What is your git email => "; read email
    git config --global user.email "$email"
fi

echo "*******************************"
echo "*    Restart your terminal    *"
echo "*******************************"

