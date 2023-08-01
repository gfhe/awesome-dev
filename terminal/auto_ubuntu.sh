#!/bin/sh

optional=0

echo "update repository and install git vim zsh"
apt update; apt install -y openssh-server net-tools git vim curl zsh lsof;
finished

echo "install oh my zsh"
chsh -s /bin/zsh;
curl -L http://install.ohmyz.sh | sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/paulirish/git-open.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-open
RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' ~/.zshrc
finished ohmyzsh

echo "install github cli tools"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
apt update
apt install gh
finished gh

if [ optional -ge 1 ]; then
  echo "install docker"
  RUN curl -fsSL https://get.docker.com | sh
  finished docker
fi

if [ optional -ge 5 ]; then
  echo "install smartide"
  curl -OL  "https://smartidedl.blob.core.chinacloudapi.cn/releases/$(curl -L -s https://smartidedl.blob.core.chinacloudapi.cn/releases/stable.txt)/smartide-linux" \
  && mv -f smartide-linux /usr/local/bin/smartide \
  && ln -s -f /usr/local/bin/smartide /usr/local/bin/se \
  && chmod +x /usr/local/bin/smartide
  finished smartide
fi

function finished(){
   echo "✅ $1\n\n"
}
