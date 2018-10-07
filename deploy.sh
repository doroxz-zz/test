#!/bin/bash

if [ -n "$GITHUB_TOKEN" ]; then
    GITHUB_URL="$(git config --get remote.origin.url)"
    # curl -H -q "Authorization: token ${GITHUB_TOKEN}" ${GITHUB_URL}
    proto="$(echo $GITHUB_URL | grep :// | sed -e's,^\(.*://\).*,\1,g')"
    url_parsed="$(echo ${GITHUB_URL/$proto/})"
    url="${proto}doroxz:${GITHUB_TOKEN}@${url_parsed}"
    git checkout master
    git pull origin
    git push -f $url develop
fi