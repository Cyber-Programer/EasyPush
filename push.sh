#!/bin/bash

# Check if a commit message was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 \"commit message\""
    exit 1
fi

COMMIT_MESSAGE="$1"

# Get the current branch name
CURRENT_BRANCH=$(git branch --show-current)

# Add all changes
git add .

# Commit with the provided message
if git commit -m "$COMMIT_MESSAGE"; then
    echo "Committed changes successfully."
else
    echo "No changes to commit or commit failed."
    exit 1
fi

# Push to the default remote and current branch
if git push origin "$CURRENT_BRANCH"; then
    echo "Pushed to GitHub successfully."
else
    echo "Push failed. Please check your remote configuration."
    exit 1
fi
