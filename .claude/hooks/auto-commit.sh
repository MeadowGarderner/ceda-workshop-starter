#!/bin/bash
# Vangnet: commit resterende wijzigingen bij session stop

cd "$CLAUDE_PROJECT_DIR" || exit 0

[ -n "$(git status --porcelain)" ] || exit 0

git add -A
git commit -m "chore: auto-commit remaining session changes"
