#!/bin/bash

find $GITHUB_WORKSPACE -name \*.md -exec markdown-link-check {} \;
