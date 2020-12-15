#!/bin/bash

PREFS="$LB_SUPPORT_PATH/settings.sh"
test -f "$PREFS" && source "$PREFS"

# set AWS default region
region=${ACTION_REGION:-us-east-1}

if [ "$LB_OPTION_ALTERNATE_KEY" == "1" ] && [ -n "$ACTION_ALTERNATIVE_BROWSER" ]; then
	OPTIONS="-b $ACTION_ALTERNATIVE_BROWSER"
fi

open $OPTIONS "https://${region}.console.aws.amazon.com$1"
curl -o "$LB_CACHE_PATH/services.json" https://gist.githubusercontent.com/thorstenhuhn/e4b70892974d7338d951fbe60d2a0655/raw/

