#!/bin/bash
. /app/n8n-exports.sh

echo "N8N_PATH: ${N8N_PATH}"
echo "N8N_EDITOR_BASE_URL: ${N8N_EDITOR_BASE_URL}"
echo "WEBHOOK_URL: ${WEBHOOK_URL}"

# Optional: relax n8n's file-access guard so file nodes (Read/Write Files,
# Convert to File, etc.) can write to mapped HA paths like /share and /media.
# n8n 1.x's `isFilePathBlocked()` defaults block these paths, and the
# `N8N_BLOCK_FILE_ACCESS_TO_N8N_FILES=false` env override is dropped by the
# task-runner subprocess that actually executes nodes, so the env-var-only
# fix is not sufficient. Opt in via the `unrestrict_file_writes: true`
# addon option (default off — addon ships with upstream defaults preserved).
if [ "${UNRESTRICT_FILE_WRITES}" = "true" ]; then
  HELPER=$(find /usr/local/lib/node_modules/n8n -name file-system-helper-functions.js 2>/dev/null | head -1)
  if [ -n "${HELPER}" ]; then
    sed -i '/^function isFilePathBlocked/s/{$/{ return false;/' "${HELPER}"
    echo "unrestrict_file_writes=true: patched isFilePathBlocked in ${HELPER}"
  else
    echo "unrestrict_file_writes=true but file-system-helper-functions.js not found; skipping"
  fi
fi

###########
## MAIN  ##
###########

exec n8n $N8N_CMD_LINE
