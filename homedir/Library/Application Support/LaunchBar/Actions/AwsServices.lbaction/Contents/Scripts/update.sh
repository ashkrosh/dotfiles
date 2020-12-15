#!/bin/bash

# populate cache from gist
curl -o "$LB_CACHE_PATH/services.json" https://gist.githubusercontent.com/thorstenhuhn/e4b70892974d7338d951fbe60d2a0655/raw/
osascript -e 'tell application "LaunchBar" to hide'

