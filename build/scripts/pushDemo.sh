#!/bin/sh

yarn demo

git remote rm origin
git remote add github "https://${GH_TOKEN}@github.com/oceanxy/react-tabllist.git"
git remote add coding "https://oceanxy:${CODING_TOKEN}@git.dev.tencent.com/Oceanxy/react-tabllist.git"

git push github `git subtree split --prefix examples master`:gh-pages --force --quiet
git push coding `git subtree split --prefix examples master`:coding-pages --force --quiet
