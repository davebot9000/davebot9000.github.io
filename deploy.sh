#!/usr/bin/env sh

# abort on errors
set -e

# build
pnpm run build

# build fresh docs
rm -rf ./docs && mkdir ./docs
cp -RP ./src/.vuepress/dist/* ./docs

# if you are deploying to a custom domain
# echo 'davebot9000.github.io' > CNAME

git add ./docs
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push
# git push -f git@github.com:davebot9000/davebot9000.github.io.git main