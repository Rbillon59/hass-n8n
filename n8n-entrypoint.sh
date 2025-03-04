#!/bin/bash
CONFIG_PATH="/data/options.json"
N8N_PATH="/data/n8n"

mkdir -p "${N8N_PATH}/.n8n/.cache"

INFO=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/info)
INFO=${INFO:-'{}'}
echo "Fetched Info from Supervisor: ${INFO}"

CONFIG=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/core/api/config)
CONFIG=${CONFIG:-'{}'}
echo "Fetched Config from Supervisor: ${CONFIG}"

ADDON_INFO=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/addons/self/info)
ADDON_INFO=${ADDON_INFO:-'{}'}
echo "Fetched Add-on Info from Supervisor: ${ADDON_INFO}"

INGRESS_PATH=$(echo "$ADDON_INFO" | jq -r '.data.ingress_url // "/"')
echo "Extracted Ingress Path from Supervisor: ${INGRESS_PATH}"

# Get the Home Assistant hostname from the supervisor info
HA_HOSTNAME=$(echo "$INFO" | jq -r '.data.hostname // "localhost"')

# Get the port from the configuration
HA_PORT=$(echo "$CONFIG" | jq -r '.port // "8123"')
echo "Home Assistant Port: ${HA_PORT}"

# Get the external URL if configured, otherwise use the hostname and port
HA_URL=$(echo "$CONFIG" | jq -r ".external_url // \"http://$HA_HOSTNAME:$HA_PORT\"")
echo "Home Assistant URL: ${HA_URL}"

# Get hostname from HA_URL
HA_HOSTNAME=$(echo "$HA_URL" | sed -e "s/https\?:\/\///" | cut -d':' -f1)

INGRESS_URL="http://${HA_HOSTNAME}:8080${INGRESS_PATH}"
WEBHOOK_URL="http://${HA_HOSTNAME}:8081"
echo "Extracted Ingress URL from Supervisor: ${INGRESS_URL}"

echo "Final Ingress Path: ${INGRESS_PATH}"
echo "Final Ingress URL: ${INGRESS_URL}"
echo "Final Webhook URL: ${WEBHOOK_URL}"

export GENERIC_TIMEZONE="$(jq --raw-output '.timezone // empty' $CONFIG_PATH)"
export N8N_PROTOCOL="$(jq --raw-output '.protocol // empty' $CONFIG_PATH)"
export N8N_SSL_CERT="/ssl/$(jq --raw-output '.certfile // empty' $CONFIG_PATH)"
export N8N_SSL_KEY="/ssl/$(jq --raw-output '.keyfile // empty' $CONFIG_PATH)"
export N8N_CMD_LINE="$(jq --raw-output '.cmd_line_args // empty' $CONFIG_PATH)"
export N8N_USER_FOLDER="${N8N_PATH}"
export N8N_PATH="${INGRESS_PATH}"
export N8N_EDITOR_BASE_URL="${INGRESS_URL}"
export WEBHOOK_URL="${WEBHOOK_URL}"
export N8N_SECURE_COOKIE=false
export N8N_HIRING_BANNER_ENABLED=false
export N8N_PERSONALIZATION_ENABLED=false
export N8N_VERSION_NOTIFICATIONS_ENABLED=false

if [ -z "${N8N_BASIC_AUTH_USER}" ] || [ -z "${N8N_BASIC_AUTH_ACTIVE}" ]; then
    export N8N_BASIC_AUTH_ACTIVE=false
    unset N8N_BASIC_AUTH_USER
    unset N8N_BASIC_AUTH_PASSWORD
fi

#####################
## USER PARAMETERS ##
#####################

# REQUIRED

# Extract the values from env_vars_list
values=$(jq -r '.env_vars_list | .[]' "$CONFIG_PATH")

# Convert the values to an array
IFS=$'\n' read -r -d '' -a array <<< "$values"

# Export keys and values
for element in "${array[@]}"
do
    key="${element%%:*}"
    value="${element#*:}"
    value=$(echo "$value" | xargs) # Remove leading and trailing whitespace
    export "$key"="$value"
    echo "exported ${key}=${value}"
done

# IF NODE_FUNCTION_ALLOW_EXTERNAL is set, install the required packages

if [ -n "${NODE_FUNCTION_ALLOW_EXTERNAL}" ]; then
    echo "Installing external packages..."
    IFS=',' read -r -a packages <<< "${NODE_FUNCTION_ALLOW_EXTERNAL}"
    for package in "${packages[@]}"
    do
        echo "Installing ${package}..."
        npm install -g "${package}"
    done
fi

###########
## MAIN  ##
###########

if [ "$#" -gt 0 ]; then
  # Got started with arguments
  exec n8n "${N8N_CMD_LINE}"
else
  # Got started without arguments
  exec n8n
fi