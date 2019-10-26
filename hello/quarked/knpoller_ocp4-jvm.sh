#!/bin/bash

KSVC_URL="$(oc -n sidebyside get ksvc quarked-jvm -o jsonpath='{.status.url}')"

while true
do curl $KSVC_URL
sleep .3
done