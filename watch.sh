#!/bin/bash

# Full path to current directory
CURRENT_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Path to destination config file
DESTINATION_CONFIG_FILENAME="${CURRENT_DIR}/config.yaml"

# Interval to poll urlwatcher
POLL_INTERVAL_SECONDS=15

# First we will write our config file to the current directory
# Explicitly write each line to avoid newline character issues
echo "report:                            " > ${DESTINATION_CONFIG_FILENAME}
echo "  slack:                           " >> ${DESTINATION_CONFIG_FILENAME}
echo "    enabled: true                  " >> ${DESTINATION_CONFIG_FILENAME}
echo "    webhook_url: '${SLACK_WEBHOOK}'" >> ${DESTINATION_CONFIG_FILENAME}

while true; do
  sleep ${POLL_INTERVAL_SECONDS}
  # TODO(teddywilson) poll url watcher
done
