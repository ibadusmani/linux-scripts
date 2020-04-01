#!/bin/bash
cd /home/username/path/to/wiki
git commit -a -m "Wiki backup $(date +%F-%s)"
git push
