#!/usr/bin/env bash
# Creates one GitHub issue per ticket heading in a backlog file.
# Requires the GitHub CLI authenticated on your machine: gh auth login
# Usage: ./scripts/create-issues.sh docs/backlog/sprint-0.md "Sprint 0"
set -euo pipefail
file="$1"; milestone="${2:-}"
[ -n "$milestone" ] && gh api repos/:owner/:repo/milestones -f title="$milestone" >/dev/null 2>&1 || true
awk '/^## SUP-/{if(t)print t"\x01"b; t=substr($0,4); b=""; next} t{b=b $0 "\n"} END{if(t)print t"\x01"b}' "$file" |
while IFS= read -r -d $'\n' line || [ -n "$line" ]; do
  title="${line%%$'\x01'*}"; body="${line#*$'\x01'}"
  [ -z "$title" ] && continue
  args=(issue create --title "$title" --body "$body" --label story)
  [ -n "$milestone" ] && args+=(--milestone "$milestone")
  gh "${args[@]}"
done
