#!/bin/sh
if [ -n $GITHUB_TOKEN ]; then
    GITHUB_URL="$(git config --get remote.origin.url)"
    if [ "$1" = "--curl" ]; then
        curl -H -q "Authorization: token ${GITHUB_TOKEN}" ${GITHUB_URL} &>/dev/null
    fi
    PROTO="$(echo $GITHUB_URL | grep :// | sed -e's,^\(.*://\).*,\1,g')";
    echo "${PROTO}$GITHUB_USER:$GITHUB_TOKEN@$(echo ${GITHUB_URL/$PROTO/})"
fi