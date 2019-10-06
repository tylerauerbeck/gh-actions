#!/bin/bash


echo "Checking the following files:"
cat /github/home/pr-files

for i in $(cat /github/home/pr-files);do markdown-link-check $i;done
