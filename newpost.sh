#!/bin/bash

# Get the current date
current_date=$(date +'%Y-%m-%d')

# Get the title from the user
read -p "Enter the title: " title
titlep=$title
# Replace spaces in the title with dashes
title=$(echo "$title" | tr ' ' '-')

# Concatenate the date, title, and file extension
file_name="$current_date-$title.md"

# Create the file
touch "_posts/$file_name"

echo "File created: $file_name"
echo "---
layout: post
title: \"$titlep\"
category: privacy
--- " >> "_posts/$file_name"
