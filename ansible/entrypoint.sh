#!/usr/bin/env bash

USER_ID=${LOCAL_USER_ID:-9001}
GROUP_ID=${LOCAL_GROUP_ID:-9001}

userExists=$(getent passwd ${USER_ID})
groupExists=$(getent group ${GROUP_ID})

if [ "${groupExists}" == "" ]; then
    addgroup -g ${GROUP_ID} dockerlocal
fi

if [ "${userExists}" == "" ]; then
    adduser -D -u ${USER_ID} -s /bin/bash -G $(getent group ${GROUP_ID} | cut -d  ":" -f1) docker
fi

arguments=$@
su docker -c "${arguments[@]}"
