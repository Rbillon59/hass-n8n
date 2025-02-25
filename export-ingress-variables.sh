#!/bin/bash

# If a fallback is provided, use it.
if [ -n "$INGRESS_URL" ]; then
  echo "Using fallback Ingress Path: ${INGRESS_URL}"
else
  # Query the Supervisor API for add-on info.
  ADDON_INFO=$(curl -s -H "Authorization: Bearer ${HASSIO_TOKEN}" http://supervisor/addons/self/info)
  INGRESS_URL=$(echo "$ADDON_INFO" | jq -r '.ingress_url')
fi

# Extract just the path part, assuming a URL structure like https://host/ingress/abcdef...
export INGRESS_PATH=$(echo "$INGRESS_URL" | sed -e 's|^[^/]*//[^/]*||')
export INGRESS_URL=$INGRESS_URL
echo "Fetched Ingress Path from Supervisor: ${INGRESS_PATH}"