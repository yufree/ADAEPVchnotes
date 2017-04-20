#!/bin/sh

set -e

git config --global user.email "yufree@live.cn"
git config --global user.name "yufree"

git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git book-output
cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m "Update the book" || true
git push origin gh-pages
