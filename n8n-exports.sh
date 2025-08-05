export N8N_SECURE_COOKIE=false
export N8N_HIRING_BANNER_ENABLED=false
export N8N_PERSONALIZATION_ENABLED=false
export N8N_VERSION_NOTIFICATIONS_ENABLED=false
export N8N_RUNNERS_ENABLED=true
export N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

CONFIG_PATH="/data/options.json"
export GENERIC_TIMEZONE="$(jq --raw-output '.timezone // empty' $CONFIG_PATH)"
export N8N_PROTOCOL="$(jq --raw-output '.protocol // empty' $CONFIG_PATH)"
export N8N_SSL_CERT="/ssl/$(jq --raw-output '.certfile // empty' $CONFIG_PATH)"
export N8N_SSL_KEY="/ssl/$(jq --raw-output '.keyfile // empty' $CONFIG_PATH)"
export N8N_CMD_LINE="$(jq --raw-output '.cmd_line_args // empty' $CONFIG_PATH)"

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

export N8N_USER_FOLDER="/data/n8n"
echo "N8N_USER_FOLDER: ${N8N_USER_FOLDER}"

INFO=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/info || echo $INFO_FALLBACK)
INFO=${INFO:-'{}'}
echo "Fetched Info from Supervisor: ${INFO}"

CONFIG=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/core/api/config || echo $CONFIG_FALLBACK)
CONFIG=${CONFIG:-'{}'}
echo "Fetched Config from Supervisor: ${CONFIG}"

ADDON_INFO=$(curl -s -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" http://supervisor/addons/self/info || echo $ADDON_INFO_FALLBACK)
ADDON_INFO=${ADDON_INFO:-'{}'}
echo "Fetched Add-on Info from Supervisor: ${ADDON_INFO}"

INGRESS_PATH=$(echo "$ADDON_INFO" | jq -r '.data.ingress_url // "/"')
echo "Extracted Ingress Path from Supervisor: ${INGRESS_PATH}"

# Get the port from the configuration
LOCAL_HA_PORT=$(echo "$CONFIG" | jq -r '.port // "8123"')

# Get the Home Assistant hostname from the supervisor info
LOCAL_HA_HOSTNAME=$(echo "$INFO" | jq -r '.data.hostname // "localhost"')
LOCAL_N8N_PORT=${LOCAL_N8N_PORT:-5690}
LOCAL_N8N_URL="http://$LOCAL_HA_HOSTNAME:$LOCAL_N8N_PORT"
echo "Local Home Assistant n8n URL: ${LOCAL_N8N_URL}"

# Get the external URL if configured, otherwise use the hostname and port
EXTERNAL_N8N_URL=${EXTERNAL_URL:-$(echo "$CONFIG" | jq -r ".external_url // \"$LOCAL_N8N_URL\"")}
EXTERNAL_HA_HOSTNAME=$(echo "$EXTERNAL_N8N_URL" | sed -e "s/https\?:\/\///" | cut -d':' -f1)
echo "External Home Assistant n8n URL: ${EXTERNAL_N8N_URL}"

export N8N_PATH=${N8N_PATH:-"${INGRESS_PATH}"}
export N8N_EDITOR_BASE_URL=${N8N_EDITOR_BASE_URL:-"${EXTERNAL_N8N_URL}${N8N_PATH}"}
export WEBHOOK_URL=${WEBHOOK_URL:-"http://${LOCAL_HA_HOSTNAME}:8081"}