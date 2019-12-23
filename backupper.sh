#!/bin/bash
rm -rf /home/ibad/backups/*
BACKUPTIME=`date +%b-%d-%y` 
DESTINATION=/home/ibad/backups/backup-$BACKUPTIME.tar.gz 
SOURCEFOLDER1=/etc/ 
SOURCEFOLDER2=/home/
tar -cpzf $DESTINATION $SOURCEFOLDER1 $SOURCEFOLDER2 
