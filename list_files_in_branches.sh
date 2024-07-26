#!/bin/bash

# Loop through each branch
for branch in $(git branch --format="%(refname:short)")
do
    echo "Branch: $branch"
    git ls-tree -r "$branch" --name-only
    echo
done
