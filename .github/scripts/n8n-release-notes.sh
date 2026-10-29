#!/usr/bin/env bash
# Usage: n8n-release-notes.sh <previous n8n version> <new n8n version> <changelog file>
set -euo pipefail

prev="$1"
new="$2"
changelog="$3"
marker='<!-- n8n-release-notes -->'

if [ "$prev" = "$new" ]; then
  echo "n8n stays at $new, nothing to add"
  exit 0
fi

IFS=. read -r new_major new_minor new_patch <<<"$new"
IFS=. read -r prev_major prev_minor prev_patch <<<"$prev"

# Only walk the target release line: n8n ships older lines in parallel, and a
# minor or major release already carries the notes since the previous minor.
start=0
if [ "$prev_major.$prev_minor" = "$new_major.$new_minor" ]; then
  start=$((prev_patch + 1))
fi

notes=$(mktemp)
trap 'rm -f "$notes"' EXIT

{
  echo "$marker"
  echo "### n8n release notes"
  echo
} >"$notes"

found=0
for patch in $(seq "$new_patch" -1 "$start"); do
  version="$new_major.$new_minor.$patch"
  if ! body=$(gh api "repos/n8n-io/n8n/releases/tags/n8n@$version" --jq .body 2>/dev/null); then
    echo "no upstream release for n8n $version, skipping"
    continue
  fi
  found=1
  {
    echo "#### [n8n $version](https://github.com/n8n-io/n8n/releases/tag/n8n%40$version)"
    printf '%s\n' "$body" \
      | tr -d '\r' \
      | grep -v -E '^<!--.*-->$' \
      | grep -v -E '^##? \[' \
      | sed -E -e 's/^### /##### /' -e '/^([#*-]|[[:space:]]|$)/!s/^/* /' \
      | cat -s
    echo
  } >>"$notes"
done

if [ "$found" = 0 ]; then
  echo "no upstream release notes found between n8n $prev and $new"
  exit 0
fi

# The notes go at the end of the newest release section, before the next "## [".
awk -v notes="$notes" -v marker="$marker" '
  /^## \[/ { sections++ }
  sections == 1 && $0 == marker { skip = 1 }
  sections == 2 && !done {
    if (!skip) { while ((getline line < notes) > 0) print line }
    done = 1
  }
  { print }
  END {
    if (!done && !skip) { while ((getline line < notes) > 0) print line }
  }
' "$changelog" >"$changelog.tmp"
mv "$changelog.tmp" "$changelog"
