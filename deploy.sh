#!/bin/bash

if [ -n "$GITHUB_TOKEN" ]; then
    git checkout master
    git branch -f -q https://doroxz:$GITHUB_TOKEN@github.com/doroxz/test develop
fi