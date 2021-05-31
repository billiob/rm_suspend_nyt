#!/bin/sh
set -e
set -x
set -u

cp ~/suspend_nyt.{service,timer} /etc/systemd/system
systemctl daemon-reload
systemctl enable suspend_nyt.timer
systemctl enable suspend_nyt.service
systemctl start suspend_nyt.timer
~/suspend_nyt.sh

