#! /bin/sh
mount -U bbbffaac-2da5-4eb4-966f-c9573e4b7f38 /home/matias/Media
rsync -a --info=progress2 /home/lavomatyc/PrimaryData /home/lavomatyc/Media/PrimaryData
