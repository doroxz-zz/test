#!/bin/bash

if [ -n "$GITHUB_TOKEN" ]; then
    curl -H "Authorization: token $GITHUB_TOKEN"
    git checkout master
    git branch -f -q https://<me>:$GITHUB_API_KEY@github.com/doroxz/test develop &>/dev/null
fi