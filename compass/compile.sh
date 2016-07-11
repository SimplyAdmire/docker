#!/usr/bin/env bash

if [ "$@" == "-" ]; then
    exit
fi

if [ "$@" == "install" ]
then
    echo "Run: bundle install"
    bundle
    echo "Run: compass compile"
    compass compile
    echo "Done"

    exit
fi
