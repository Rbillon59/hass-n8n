#!/bin/bash
CONFIG_PATH="/data/options.json"
N8N_PATH="/data/n8n"

mkdir -p "${N8N_PATH}/.n8n/.cache"

. /app/export-ingress-variables.sh

export GENERIC_TIMEZONE="$(jq --raw-output '.timezone // empty' $CONFIG_PATH)"
export N8N_CMD_LINE="$(jq --raw-output '.cmd_line_args // empty' $CONFIG_PATH)"
export N8N_USER_FOLDER="${N8N_PATH}"
export N8N_PATH="${INGRESS_PATH}"
export N8N_EDITOR_BASE_URL="${INGRESS_URL}"

export N8N_RUNNERS_ENABLED=true
export N8N_BASIC_AUTH_ACTIVE=false
export N8N_HIRING_BANNER_ENABLED=false
export N8N_PERSONALIZATION_ENABLED=false
export N8N_SECURE_COOKIE=false

#####################
## USER PARAMETERS ##
#####################

# REQUIRED

# Extract the values from env_vars_list
values=$(jq -r '.env_vars_list | .[]' "$CONFIG_PATH")

# Convert the values to an array
IFS=$'\n' read -r -d '' -a array <<< "$values"

# Flag to track if WEBHOOK_URL is set by the user
webhook_url_set=false

# Export keys and values
for element in "${array[@]}"
do
    key="${element%%:*}"
    value="${element#*:}"
    value=$(echo "$value" | xargs) # Remove leading and trailing whitespace
    export "$key"="$value"
    echo "exported ${key}=${value}"
    
    # Check if WEBHOOK_URL is set by the user
    if [ "$key" = "WEBHOOK_URL" ]; then
        webhook_url_set=true
    fi
done

# If WEBHOOK_URL is not set by the user, set it to the ingress URL
if [ "$webhook_url_set" = false ]; then
    export WEBHOOK_URL="${INGRESS_URL}"
    echo "exported WEBHOOK_URL=${INGRESS_URL} (auto-configured from ingress)"
fi

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
