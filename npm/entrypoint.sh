#!/usr/bin/env bash

if [ $1 == '/bin/bash' ]; then
    $@
else
    npm $@
fi
