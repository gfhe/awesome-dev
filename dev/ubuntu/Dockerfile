FROM ubuntu:latest
MAINTAINER hgf 

ENV password=hgfgood
EXPOSE 22

RUN apt update; apt install -y openssh-server net-tools git vim;
RUN apt install -y curl zsh; chsh -s /bin/zsh; 
RUN curl -L http://install.ohmyz.sh | sh
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#RUN git clone https://github.com/paulirish/git-open.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-open
RUN apt install -y lsof

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' ~/.zshrc
RUN echo "root:${password:-hgfgood}" |chpasswd 

RUN mkdir /run/sshd
CMD ["/usr/sbin/sshd", "-D"]
