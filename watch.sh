#!/bin/bash
#
# Simple script that leverages urlwatcher to poll the Ableton Mac OSX compatibility article
# If a change is detected, a notification will be posted to the community Slack channel

# Full path to current directory
CURRENT_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Path to destination config file
DESTINATION_CONFIG_FILENAME="${CURRENT_DIR}/config.yaml"

# Interval to poll urlwatcher
POLL_INTERVAL_SECONDS=15

# Write config contents to destination file
# Explicitly write each line to avoid newline character issues
echo "report:                            " > ${DESTINATION_CONFIG_FILENAME}
echo "  slack:                           " >> ${DESTINATION_CONFIG_FILENAME}
echo "    enabled: true                  " >> ${DESTINATION_CONFIG_FILENAME}
echo "    webhook_url: '${SLACK_WEBHOOK}'" >> ${DESTINATION_CONFIG_FILENAME}

while true; do
  urlwatch --urls "${CURRENT_DIR}/urls.yaml" --config "${CURRENT_DIR}/config.yaml" 
  sleep ${POLL_INTERVAL_SECONDS}
done
