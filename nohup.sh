10 0 * * *  nohup /opt/app/video-data-collection/bin/start.sh > /data/logs/$(date +\%Y-\%m-\%d)-cron.log 2>&1 &
