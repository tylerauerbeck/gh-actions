#!/bin/sh

PR_ENDPOINT=$(jq -r ".pull_request._links.self.href" "$GITHUB_EVENT_PATH")

echo "Collecting changed files from $GITHUB_REPOSITORY"

curl -s https://api.github.com/repos/tylerauerbeck/gh-actions/pulls/2/files | jq -r .[].filename > /github/home/pr-files


