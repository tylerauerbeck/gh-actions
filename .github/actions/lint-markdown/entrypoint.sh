#!/bin/bash


echo "Checking the following files:"
cat /github/home/pr-files | grep .*.md$

for i in $(cat /github/home/pr-files | grep .*.md$);do remark $GITHUB_WORKSPACE/$i --use remark-preset-lint-recommended;done
