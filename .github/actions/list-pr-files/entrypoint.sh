#!/bin/sh

cat $GITHUB_EVENT_PATH

PR_NUMBER=$(jq -r ".pull_request._links.self.href" "$GITHUB_EVENT_PATH")

echo "Collecting information about PR #$PR_NUMBER of $GITHUB_REPOSITORY..."
