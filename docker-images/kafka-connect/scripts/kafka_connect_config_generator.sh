#!/bin/bash

# Write the config file
cat <<EOF
# REST Listeners
rest.port=8083
rest.advertised.host.name=$(hostname -I)
rest.advertised.port=8083
# Plugins
plugin.path=${KAFKA_CONNECT_PLUGIN_PATH}
# User configuration
${KAFKA_CONNECT_USER_CONFIGURATION}
EOF