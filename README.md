# awesome development environment configuration

## 开发时依赖环境

依赖的系统均适用docker运行：

1. 避免在自己的电脑上安装太多的软件
2. 方便依赖的系统迁移
3. 方便依赖的共享
4. 随时可以清理

### 核心依赖

包含开发使用的各类服务和平时使用的工具。

1. kafka：[一键运行脚本](./dev/kafka/start_kafka.sh)
1. mysql：[一键运行脚本](./dev/mysql/start_mysql.sh)
1. redis：[一键运行脚本](./dev/redis/start_redis.sh)
1. zookeeper：[一键运行脚本](./dev/zookeeper/start_zookeeper.sh)
1. es: [docker-compose](./dev/es/docker-compose.yml)
1. rust-jupyter: [docker-compose](./dev/rust/docker-compose.yml) (详细情况参考：[docker-rust-jupyter](https://github.com/hgfkeep/rust-jupyter))
1. mongo: [一键运行脚本](./dev/mongo/start_mongo.sh)
1. [gitlab代码仓库](./service/gitlab/start_gitlab.sh)
1. [部署harbor容器仓库](./service/harbor.md)
1. [aria2+webUI实现离线下载服务](./service/offline_downloader.md)
1. [VPN服务](./service/vpn)

## hugo

[hugo](https://gohugo.io) 是一个静态博客生成器，类似hexo和jekyll。
使用方法见[说明](./hugo/README.md)。


## IDEA的Editor配置


## iterms color配置

* Dracula.itermcolors
* Snazzy.itermcolors
* material-design-colors.itermcolors

## 工具集

* [批量推送镜像到dockerhub](./tools/image_sync/push_images_to_registry.sh)
* [快速调试pod](./tools/busybox-pvc.sh)

## terminal

terminal 常用的命令配置

### ohmyzsh调教

* 高亮插件
* 根据历史输入自动提示

## 服务部署



