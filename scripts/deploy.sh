#!/usr/bin/env sh

# abort on errors
set -e

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'khaaz.me' > CNAME

git config --global init.defaultBranch main
git init
git remote add github "https://$GITHUB_ACTOR:$GITHUB_TOKEN@github.com/khaaz.github.io.git"

git add -A

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"

git commit -m "deploy"

# if you are deploying to https://<USERNAME>.github.io
git push -f --set-upstream https://${GITHUB_ACTOR}:${GH_TOKEN}@github.com/Khaaz/khaaz.github.io.git main

cd -
