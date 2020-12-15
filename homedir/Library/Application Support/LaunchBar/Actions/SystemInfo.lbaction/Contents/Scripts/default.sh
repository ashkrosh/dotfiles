#! /bin/bash

LOCAL=$(ipconfig getifaddr en0)
EXTERNAL=$(curl --silent http://icanhazip.com)

cat<<EOB
$LOCAL , $EXTERNAL
EOB