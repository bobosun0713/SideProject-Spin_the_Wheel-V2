#!/usr/bin/env sh

# abort on errors
set -e

# build
pnpm build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# 這邊網址要改為自己所建立的專案，也可以才用SSH
git push -f https://github.com/bobosun0713/SideProject-Spin_the_Wheel.git master:gh-pages

cd -