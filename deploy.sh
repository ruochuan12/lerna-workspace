#!/usr/bin/env sh
###
 # @Author: Nintendo
 # @Date: 2024-07-23 17:35:19
 # @LastEditors: Nintendo
 # @LastEditTime: 2024-07-23 17:42:11
 # @Description: 
### 

#抛出异常信息
set -e

push_add-`git remote get-url --push origin`
commit-info-`git describe --all --always --long`
dish_path-`docs\.vuepress/dist`
push_branch-gh-pages

npm run docs:build # 生成静态资源站

git init
git add -A
git commit -m "deploy:$commit_info"
git push -f $push_addr HEAD:$push_branch

cd-
rm -rf $dist_path