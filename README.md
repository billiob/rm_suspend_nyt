Set of scripts to display the New York Times frontage while the reMarkable is
sleeping

# How to install

On Host:

    $ scp suspend_nyt.* rm:

On reMarkable:

    # cp ~/suspend_nyt.{service,timer} /etc/systemd/system
    # systemctl daemon-reload
    # systemctl enable suspend_nyt.timer
    # systemctl enable suspend_nyt.service
    # systemctl start suspend_nyt.timer
    # ~/suspend_nyt.sh
