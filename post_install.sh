#!/bin/bash
register() {
    touch /sbin/chkconfig
    chmod +x /sbin/chkconfig
    install -b -m644 ./nikal.c.new /usr/local/natinst/nikal/src/nikal/nikal.c
    install -b -m644 ./nipal.new /usr/local/natinst/nipal/etc/init.d/nipal
    rm -rf /var/lib/nikal
    install -b -m644 ./menus/*.menu /etc/xdg/menus/applications-merged/
    install -b -m644 ./services/*.service /etc/systemd/system/
    chmod a-x /etc/init.d/*
    chmod +x /usr/local/natinst/nipal/etc/init.d/*
    systemctl daemon-reload
    systemctl enable nipal && echo "Enabled nipal.service"
    /usr/local/bin/updateNIDrivers --no-prompt
}

register && cat << EOF

-------------------------------------------------------------------------------

Registered systemd services.

To modify service(s) , use:
    systemctl (start|stop|status|enable) (nilxid|nipal|nisvcloc|nimdnsd|nipxirmu).service

-------------------------------------------------------------------------------

EOF

