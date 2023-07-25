#!/bin/sh

#
# Simple weather script
# made by kuvaus
#
# https://github.com/kuvaus/wttr.sh
#

if [ $# -eq 0 ]
then
    output=$(curl -s wttr.in)
    echo "${output}" | sed -n '1p' | cut -c17-
    echo "${output}" | sed -n '2,7p'
    echo ""
    exit 0
else
    args=""
    for arg in "$@" # Loop over arguments
    do
        if [[ "$args" != "" ]]
        then
            args+="+"
        fi
        args+="$arg"
    done
    output=$(curl -s wttr.in/"$args")
    country=$(echo "${output}" | sed -n '38p' | sed 's/.*,\s*\(.*\)\s*\[.*/\1/')
    city=$(echo "${output}" | sed -n '38p' | cut -c11- | cut -d ',' -f 1)
    echo "${city}","${country}"
    echo "${output}" | sed -n '2,7p'
    echo ""
    exit 0
fi


