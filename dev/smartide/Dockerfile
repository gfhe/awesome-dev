FROM hgfkeep/ubuntu
MAINTAINER hgf

RUN curl -fsSL https://get.docker.com | sh

RUN curl -OL  "https://smartidedl.blob.core.chinacloudapi.cn/releases/$(curl -L -s https://smartidedl.blob.core.chinacloudapi.cn/releases/stable.txt)/smartide-linux" \
&& mv -f smartide-linux /usr/local/bin/smartide \
&& ln -s -f /usr/local/bin/smartide /usr/local/bin/se \
&& chmod +x /usr/local/bin/smartide
