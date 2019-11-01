#!/bin/bash
KSVC_URL="$(oc -n sidebyside get ksvc noded -o jsonpath='{.status.url}')"

while true
do curl -s $KSVC_URL > /dev/null
sleep .3
done