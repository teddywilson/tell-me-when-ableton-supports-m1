#!/bin/bash
#
# Simple script that leverages urlwatcher to poll the Ableton Mac OSX compatibility article
# If a change is detected, a notification will be posted to the community Slack channel

# Validate environment variables
if [[ -z "${SLACK_WEBHOOK}" ]]; then
  echo "SLACK_WEBHOOK environment variable must be set"
  exit 1
fi

# Full path to current directory
CURRENT_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# urlwatch urls config
URLS_CONFIG="${CURRENT_DIR}/urls.yaml"

# Path to destination config file
URLWATCH_CONFIG="${CURRENT_DIR}/config.yaml"

# Interval to poll urlwatcher
POLL_INTERVAL_SECONDS=15

# Clear the urlwatch cache
urlwatch --gc-cache

# Make an initial call to urlwatch before polling/setting up notifications. This is to combat
# notifying users upon new deployments.
urlwatch --urls "${URLS_CONFIG}"

# Write config contents to destination file
# Explicitly write each line to avoid newline character issues
echo "report:                            " > ${URLWATCH_CONFIG}
echo "  slack:                           " >> ${URLWATCH_CONFIG}
echo "    enabled: true                  " >> ${URLWATCH_CONFIG}
echo "    webhook_url: '${SLACK_WEBHOOK}'" >> ${URLWATCH_CONFIG}

while true; do
  echo "Polling..."
  urlwatch --urls "${URLS_CONFIG}" --config "${URLWATCH_CONFIG}" 
  sleep ${POLL_INTERVAL_SECONDS}
done
