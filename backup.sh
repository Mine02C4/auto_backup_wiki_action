#!/bin/sh
WIKI_REPOSITORY_URL="https://github-actions:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.wiki.git"
CODE_REPOSITORY_URL="https://github-actions:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"

git clone $WIKI_REPOSITORY_URL wiki
cd wiki
git remote add repo $CODE_REPOSITORY_URL
git push repo master:$TARGET_BRANCH