#!/usr/bin/env bash

USER_ID=${LOCAL_USER_ID:-9001}

userExists=$(getent passwd ${USER_ID})

if [ "${userExists}" == "" ]; then
    adduser -D -u ${USER_ID} -s /bin/bash -h /root/ -G root docker
fi

export PATH="$HOME/.yarn/bin:$PATH"

arguments=$@
su docker -c "${arguments[@]}"
