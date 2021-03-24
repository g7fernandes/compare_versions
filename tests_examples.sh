#!/bin/bash

v1=1.2.3
v2=1.3.2
ANS=$(./compare_versions.sh "$v1" "$v2")
echo "$v1 $ANS $v2"


v1="3 3 2"
v2="1.3.2"
ANS=$(./compare_versions.sh "$v1" "$v2")
echo "$v1 $ANS $v2"

v1=0.1
ANS=$(./compare_versions.sh "$(sed --version | grep -m 1 "sed (GNU sed)" | sed -e "s/[^0-9]/ /g; s/^[ ]*//; s/[ ]*$//")" "$v1" )
echo "$(sed --version | grep -m 1 "sed (GNU sed)")" $ANS $v1
