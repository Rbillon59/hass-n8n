#!/bin/bash
. /app/n8n-exports.sh

echo "N8N_PATH: ${N8N_PATH}"
echo "N8N_EDITOR_BASE_URL: ${N8N_EDITOR_BASE_URL}"
echo "WEBHOOK_URL: ${WEBHOOK_URL}"

###########
## MAIN  ##
###########

exec n8n $N8N_CMD_LINE
