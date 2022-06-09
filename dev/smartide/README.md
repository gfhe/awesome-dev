# Usage

docker in docker的方式使用smartIDE。
需要映射`/var/run/docker.sock`到容器的`/var/run/docker.sock`，即：如果直接使用docker运行本镜像，需要加上参数 `-v /var/run/docker.sock:/var/run/docker.sock`
