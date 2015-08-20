#!/bin/bash

for i in `ls -d .* | grep -v -e "git$|\.$"`; do cp $i ~; done
