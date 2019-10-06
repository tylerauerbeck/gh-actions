#!/bin/sh

cat $GITHUB_EVENT_PATH

PR_NUMBER=$(jq -r ".issue.number" "$GITHUB_EVENT_PATH")

echo "Collecting information about PR #$PR_NUMBER of $GITHUB_REPOSITORY..."
