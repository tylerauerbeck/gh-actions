#!/bin/bash


echo "Checking the following files:"
cat /tmp/pr-files

for i in $(cat /tmp/pr-files);do markdown-link-check $i;done
