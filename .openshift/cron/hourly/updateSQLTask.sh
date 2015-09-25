#!/bin/bash
hour=$(date '+%H')
if [ $hour != 18 ] && [ $hour != 11 ]; then
    exit
fi
curl "http://server-fixwin.rhcloud.com/refresh"
date >> ${OPENSHIFT_LOG_DIR}/cron_runs.log
exit