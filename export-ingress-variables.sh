#!/bin/bash

# If a fallback is provided, use it.
if [ -n "$INGRESS_URL" ]; then
  echo "Using fallback Ingress Path: ${INGRESS_URL}"
  export INGRESS_PATH=$(echo "$INGRESS_URL" | sed -e 's|^[^/]*//[^/]*||')
  export INGRESS_URL=$INGRESS_URL
else
  INFO=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/info)
  echo "Fetched Info from Supervisor: ${INFO}"
  
  CONFIG=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/addons/self/config)
  echo "Fetched Config from Supervisor: ${CONFIG}"

  ADDON_INFO=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/addons/self/info)
  echo "Fetched Add-on Info from Supervisor: ${ADDON_INFO}"

  export INGRESS_PATH=$(echo "$ADDON_INFO" | jq -r '.ingress_url')
  echo "Extracted Ingress Path from Supervisor: ${INGRESS_PATH}"

  export INGRESS_URL=$(echo "$INFO" | jq -r '.hostname')
  echo "Extracted Ingress URL from Supervisor: ${INGRESS_URL}"
fi

echo "Final Ingress Path: ${INGRESS_PATH}"
echo "Final Ingress URL: ${INGRESS_URL}"