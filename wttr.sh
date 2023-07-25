#!/bin/sh

#
# Simple weather script
# made by kuvaus
#
# https://github.com/kuvaus/wttr.sh
#

if [ -z "$@" ]
    then
        output=$(curl -s  wttr.in)
        echo "${output}" | sed -n '1p' | cut -c17-
        echo "${output}" | sed -n '2,7p'
        echo ""
        exit 0
    else
        output=$(curl -s  wttr.in/"$@")
        echo "${output}" | sed -n '1p' | cut -c17-
        echo "${output}" | sed -n '2,7p'
        echo ""
        exit 0
fi

