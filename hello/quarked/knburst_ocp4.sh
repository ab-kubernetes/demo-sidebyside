#!/bin/bash

KSVC_URL="$(oc -n sidebyside get ksvc quarked -o jsonpath='{.status.url}')"

wrk2 -t2 -c100 -R200 -d30 $KSVC_URL > /dev/null 2>&1