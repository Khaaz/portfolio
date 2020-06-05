#!/usr/bin/env sh

# abort on errors
set -e

git config user.name "$GITHUB_ACTOR"
git config user.email "$GITHUB_ACTOR@users.noreply.github.com"

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'khaaz.me' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:Khaaz/khaaz.github.io.git master

cd -
