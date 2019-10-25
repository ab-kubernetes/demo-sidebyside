#!/bin/bash

KSVC_URL="$(oc -n sidebyside get ksvc quarked -o jsonpath='{.status.url}')"

siege -r 10 -c 200 -d 2 -v $KSVC_URL