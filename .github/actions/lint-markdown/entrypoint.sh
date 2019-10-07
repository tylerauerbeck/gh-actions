#!/bin/bash


echo "Checking the following files:"
cat /github/home/pr-files

for i in $(cat /github/home/pr-files);do remark $GITHUB_WORKSPACE/$i --use preset-lint-markdown-style-guide;done
