#!/bin/bash
# Commit all current changes when a task is marked done in PLANNING.md

cd "$CLAUDE_PROJECT_DIR" || exit 0

[ -f "PLANNING.md" ] || exit 0

# Check for newly added "done" lines since last commit
NEW_DONE=$(git diff HEAD -- PLANNING.md 2>/dev/null | grep '^+[^+]' | grep -i '\bdone\b' | grep -oE 'S[0-9]+(\.[0-9]+)?' | head -1)

[ -n "$NEW_DONE" ] || exit 0
[ -n "$(git status --porcelain)" ] || exit 0

git add -A
git commit -m "feat($NEW_DONE): complete task $NEW_DONE"
