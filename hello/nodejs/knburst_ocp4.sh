#!/bin/bash

KSVC_URL="$(oc -n sidebyside get ksvc noded -o jsonpath='{.status.url}')"

siege -r 1 -c 40 -d 2 -v $KSVC_URL