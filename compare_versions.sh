#!/bin/bash

compare_versions() {
    # The shortest array must be the $1
    # Split in words purposefully
    # shellcheck disable=SC2207
    V1=($(sed "s/\./ /g" <<< $1))
    # shellcheck disable=SC2207
    V2=($(sed "s/\./ /g" <<< $2))
    if [ "${#V1[@]}" -le "${#V2[@]}" ]; then
        len=${#V1[@]}
    else
        len=${#V2[@]}
    fi
    local ans="="
    for ((i=0; i<$len; i++)); do
        if [ ${V1[$i]} -gt ${V2[$i]} ]; then
            ans=">"
            break
        elif [ ${V1[$i]} -lt ${V2[$i]} ]; then
            ans="<"
            break
        fi
    done
    echo $ans
}

ANS=$(compare_versions "$1" "$2")
echo $ANS
