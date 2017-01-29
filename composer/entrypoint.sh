#!/usr/bin/env bash

USER_ID=${LOCAL_USER_ID:-9001}

userExists=$(getent passwd ${USER_ID})

if [ "${userExists}" == "" ]; then
    adduser -D -u ${USER_ID} -s /bin/sh -h /root/ -G root docker
fi

arguments=$@

if [ "${1}" == "install" ] || [ "${1}" == "update" ]; then
    arguments=("--ignore-platform-reqs" "${arguments[@]}")
fi

su docker -c "composer --ansi ${arguments[@]}"
