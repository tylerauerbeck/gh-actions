#!/bin/bash


echo "Checking the following files:"
cat /github/home/pr-files

for i in $(cat /github/home/pr-files);do echo $GITHUB_WORKSPACE/$i; ls -ld $GITHUB_WORKSPACE/$i; markdown-link-check $GITHUB_WORKSPACE/$i;done
