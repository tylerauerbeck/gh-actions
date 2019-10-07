#!/bin/sh

# Get changed markdown file

# Get Root of file (directory path)

# Get metadata file (?)

# If there's no metadata file, let's make some assumptions

	# Build title from filename
	# Check if there are labels
		# if there are labels let's build the labels to apply
		# if there are labels let's build the series name

# if the action is a pull request, publish: false

# if the action is a merge, publish : true

cat /github/home/pr-files | grep .*.md$ 
