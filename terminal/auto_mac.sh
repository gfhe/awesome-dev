#!/bin/env bash

echo "installing required apps"
echo "--------------------- required apps- ----------------------""
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "✅brew installed"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo 'alias zshconfig="vim ~/.zshrc"' >> ~/.zshrc
echo "✅zsh installed"

brew install outline
echo "✅outline installed"

brew install jq tmux exa fd fzf highlight gh xh
brew install iterm2 microsoft-edge sublime-text visual-studio-code jetbrains-toolboxi --cask
echo "✅dev tools installed"

# brew install podman podman-compose
# echo "alias docker=podman" >> ~/.zshrc"
# echo "alias docker-compose=podman-compose" >> ~/.zshrc"
# source ~/.zshrc

brew install docker  docker-compose
echo "✅container tools installed"

echo "-----------------programming languages----------------------""
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "✅rust installed"

brew install go

brew install maven oracle-jdk

echo "------------------ office tools ----------------------------""
brew install microsoft-word microsoft-excel microsoft-powerpoint
echo "✅office installed"

brew install omnifocus omnigraffle omnioutliner omniplan omnipresence omnidisksweeper
echo "✅omni tools installed"

brew install wechat  tencent-meeting
echo "✅wechat installed"

brew install charles
