#!/bin/bash

if [ -n "$GITHUB_TOKEN" ]; then
    git checkout master
    git branch -f -q https://<me>:$GITHUB_TOKEN@github.com/doroxz/test develop
fi