#!/bin/sh

git remote set-url origin https://x-access-token:$GITHUB_TOKEN@github.com/$REPOSITORY_OWNER/$REPOSITORY_NAME.git

git fetch origin
git checkout -f -B $BRANCH_NAME origin/$BRANCH_NAME

git reset --hard $COMMIT_SHA
git push --force origin $BRANCH_NAME
