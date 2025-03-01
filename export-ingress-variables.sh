#!/bin/bash

# If a fallback is provided, use it.
if [ -n "$INGRESS_URL" ]; then
  echo "Using fallback Ingress Path: ${INGRESS_URL}"
  export INGRESS_PATH=$(echo "$INGRESS_URL" | sed -e 's|^[^/]*//[^/]*||')
  export INGRESS_URL=$INGRESS_URL
else
  INFO=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/info)
  echo "Fetched Info from Supervisor: ${INFO}"
  
  CONFIG=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/core/api/config)
  echo "Fetched Config from Supervisor: ${CONFIG}"

  ADDON_INFO=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/addons/self/info)
  echo "Fetched Add-on Info from Supervisor: ${ADDON_INFO}"

  export INGRESS_PATH=$(echo "$ADDON_INFO" | jq -r '.data.ingress_url')
  echo "Extracted Ingress Path from Supervisor: ${INGRESS_PATH}"

  # Get the Home Assistant hostname from the supervisor info
  HA_HOSTNAME=$(echo "$INFO" | jq -r '.data.hostname')
  
  # Get the port from the configuration
  HA_PORT=$(echo "$CONFIG" | jq -r '.port // "8123"')
  echo "Home Assistant Port: ${HA_PORT}"
  
  # Get the external URL if configured, otherwise use the hostname and port
  EXTERNAL_URL=$(echo "$CONFIG" | jq -r '.external_url // empty')
  
  if [ -n "$EXTERNAL_URL" ]; then
    export INGRESS_URL="${EXTERNAL_URL}${INGRESS_PATH}"
  else
    export INGRESS_URL="http://${HA_HOSTNAME}:${HA_PORT}${INGRESS_PATH}"
  fi
  echo "Extracted Ingress URL from Supervisor: ${INGRESS_URL}"
fi

echo "Final Ingress Path: ${INGRESS_PATH}"
echo "Final Ingress URL: ${INGRESS_URL}"