#!/bin/bash

# 安装依赖
echo "安装依赖"
yarn

# 打包 
echo "打包"
yarn build

echo "删除旧文件"
# 删除 ngnix 指向的文件夹下得文件
rm -rf /home/www/*

# 将打包好的文件复制过去
mv /tmp/vue-deploy-demo/dist/*  /home/www
# 删除 clone 的代码
rm -rf /tmp/vue-deploy-demo