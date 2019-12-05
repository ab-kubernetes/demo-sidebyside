#!/bin/bash

KSVC_URL="$(oc -n sidebyside get ksvc noded -o jsonpath='{.status.url}')"

wrk2 -t2 -c100 -R200 -d60 $KSVC_URL > /dev/null 2>&1