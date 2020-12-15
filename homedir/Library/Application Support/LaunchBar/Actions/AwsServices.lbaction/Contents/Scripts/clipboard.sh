#!/bin/bash

PARAM=$1
PREFS="$LB_SUPPORT_PATH/settings.sh"
test -f "$PREFS" && source "$PREFS"

clipboard=$(pbpaste)
eval export ACTION_${PARAM}="$clipboard"
set | grep "^ACTION_" > "$PREFS"

osascript -e 'tell application "LaunchBar" to hide'

