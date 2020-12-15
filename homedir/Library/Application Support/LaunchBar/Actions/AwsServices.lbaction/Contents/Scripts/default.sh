#!/bin/bash

# populate cache if necessary
test -f "$LB_CACHE_PATH/services.json" || curl -o "$LB_CACHE_PATH/services.json" https://gist.githubusercontent.com/thorstenhuhn/e4b70892974d7338d951fbe60d2a0655/raw/

clipboard=$(pbpaste)

settings='{ "title": "Settings", "children": [ { "title": '
if [[ $clipboard =~ ^[a-z]{2}-[a-z]*-[0-9]$ ]]; then
	settings=$settings'"Set region to '$clipboard'", "icon": "font-awesome:check-circle", "action": "clipboard.sh", "actionArgument": "REGION"'
else
	settings=$settings'"Set region from clipboard", "subtitle": "Clipboard content is not a valid AWS region", "icon": "font-awesome:exclamation-circle"'
fi
settings=$settings' }, { "title": '

osascript -e 'tell application "Finder" to get application file id "'$clipboard'"' >/dev/null 2>&1
if [ $? -eq 0 ]; then
	settings=$settings'"Set alternative browser to '$clipboard'", "icon": "font-awesome:check-circle", "action": "clipboard.sh", "actionArgument": "ALTERNATIVE_BROWSER"'
else
	settings=$settings'"Set alternative browser from clipboard", "subtitle": "Clipboard content is not a valid bundle id", "icon": "font-awesome:exclamation-circle"'
fi
settings=$settings' },'

settings=$settings'{ "title": "Update services list", "icon": "font-awesome:sync-alt", "action": "update.sh" }'

settings=$settings'] }'

items=$(cat $LB_CACHE_PATH/services.json)
echo $items | sed "s/^\[/[ $settings, /"

