FROM hgfkeep/ubuntu
MAINTAINER hgf

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN curl -fsSL https://get.docker.com | sh
RUN apt install -y docker-compose python3 ncat inetutils-ping htop

RUN curl -OL  "https://smartidedl.blob.core.chinacloudapi.cn/releases/$(curl -L -s https://smartidedl.blob.core.chinacloudapi.cn/releases/stable.txt)/smartide-linux" \
&& mv -f smartide-linux /usr/local/bin/smartide \
&& ln -s -f /usr/local/bin/smartide /usr/local/bin/se \
&& chmod +x /usr/local/bin/smartide

RUN git clone https://github.com/smartide/smartide-templates ~/.ide/template
