#!/bin/bash
# Auto-commit on session stop

cd "$CLAUDE_PROJECT_DIR" || exit 0

# Check for changes
if [ -z "$(git status --porcelain)" ]; then
  exit 0
fi

# Stage all changes
git add -A

# Build commit message from what changed
CHANGED=$(git diff --cached --name-only | head -5 | tr '\n' ' ')
git commit -m "chore: auto-commit session changes [${CHANGED%% }]"
