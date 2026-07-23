#!/usr/bin/env bash
set -euo pipefail

# Check gh CLI aanwezig
if ! command -v gh &>/dev/null; then
  echo "❌ GitHub CLI niet gevonden. Installeer via: https://cli.github.com"
  exit 1
fi

# Check ingelogd
if ! gh auth status &>/dev/null; then
  echo "❌ Niet ingelogd bij GitHub. Voer eerst uit: gh auth login"
  exit 1
fi

USERNAME=$(gh api user -q .login)
BRANCH="workshop/${USERNAME}"

echo "👤 GitHub gebruiker: ${USERNAME}"
echo "🌿 Branch aanmaken: ${BRANCH}"

# Zorg dat we op main staan en up-to-date zijn
git fetch origin main
git checkout main
git pull origin main

# Branch aanmaken (of overstappen als die al bestaat)
if git show-ref --quiet "refs/remotes/origin/${BRANCH}"; then
  echo "ℹ️  Branch bestaat al op origin — lokaal ophalen"
  git checkout -B "${BRANCH}" "origin/${BRANCH}"
elif git show-ref --quiet "refs/heads/${BRANCH}"; then
  echo "ℹ️  Branch bestaat al lokaal — overstappen"
  git checkout "${BRANCH}"
else
  git checkout -b "${BRANCH}"
fi

# Push naar origin zodat de branch zichtbaar is
git push -u origin "${BRANCH}"

echo ""
echo "✅ Klaar! Je werkt nu op branch: ${BRANCH}"
echo "   Open http://localhost:4321 in je browser en start de workshop."
