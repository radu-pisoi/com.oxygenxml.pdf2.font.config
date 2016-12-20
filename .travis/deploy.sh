#!/bin/bash

set -o errexit -o nounset

if [ "$TRAVIS_BRANCH" != "master" ]
then
  echo "This commit was made against the $TRAVIS_BRANCH and not the master! No deploy!"
  exit 0
fi

rev=$(git rev-parse --short HEAD)

cd publishing

git init
git config user.name "Radu Pisoi"
git config user.email "radupisoi23@gmail.com"

git remote add upstream "https://$GH_TOKEN@github.com/radu-pisoi/com.oxygenxml.pdf2.font.config"
git fetch upstream
git reset upstream/gh-pages

git add -A .
git status
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:gh-pages
