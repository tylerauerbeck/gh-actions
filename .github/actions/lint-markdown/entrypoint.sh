#!/bin/bash


echo "Checking the following files:"
cat /github/home/pr-files | egrep -i *.md

for i in $(cat /github/home/pr-files | egrep -i *.md);do remark $GITHUB_WORKSPACE/$i --use preset-lint-markdown-style-guide;done
