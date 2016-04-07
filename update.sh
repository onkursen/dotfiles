#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

for f in $(ls -a | grep -ve "\.$" | grep -ve ".git$" | grep -e "^\.")
do
  cp $f ~
done
