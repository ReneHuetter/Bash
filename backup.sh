#!/bin/bash
date=`date "+%Y%m%dT%H_%M_%S"`
BACKUPSOURCE='/home /etc /mnt/storage/shares'
BACKUPDIR=/media/usb
rsync -av --log-file=$BACKUPDIR/rsync.log --link-dest=$BACKUPDIR/late
st $BACKUPSOURCE $BACKUPDIR/back-$date
rm -f $BACKUPDIR/latest
ln -s back-$date $BACKUPDIR/latest