# dlink-cfg-backup

Backup D-Link switch config using TFTP server.

## Prerequisites

You must have [Expect](http://expect.sourceforge.net/) installed.

## How to

### Backup one switch

    upload-cfg.exp SWITCH_IP LOGIN PASSWORD TFTP_SERVER_IP

### Backup switches from list

* Edit `upload-cfgs.sh`: change USERNAME, PASSWORD and TFTP values.
* Edit `switches`: add your switches.
* Run `upload-cfgs.sh`.
