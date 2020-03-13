#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd public

# 如果是发布到自定义域名
echo 'codeexpander.com' > CNAME

git init
git remote add coding https://e.coding.net/xudaolong/codeexpander.git
git checkout -b gh-pages-source
git add -A
git commit -m 'deploy'
git push coding gh-pages-source -f

cd -