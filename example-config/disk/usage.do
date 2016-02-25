TITLE="Disk usage"
MESSAGE="Legacy:
$(df -h)

ZFS:
$(sudo zfs list)

ZPOOL:
$(sudo zpool list)"
