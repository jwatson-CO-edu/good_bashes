#!/bin/bash
# Bkup_USB.sh
# James Watson, 2016 September
# Back up my favorite USB drives

chmod u+x Bkup_USB.sh

# Success booleans
FP=true
MS=true
CG=true
C6=true

clear

echo Backing up FILEPILE ...
# ONE of these should work!
if ((time rsync -va --delete /media/"$USER"/FILEPILE/ /mnt/MAINBACKUP/fp_backup) |& tee /media/"$USER"/FILEPILE/bckp_logs/logs/backup_$(date +"%Y-%m-%d_%H-%M").txt);then
    FP=true
else
    FP=false
fi

clear
echo Backing up BIG_MUSIC ...
if ((time rsync -va --delete /media/"$USER"/BIG_MUSIC/ /mnt/MAINBACKUP/corsair_backup) |& tee /media/"$USER"/BIG_MUSIC/bckp_logs/logs/backup_$(date +"%Y-%m-%d_%H-%M").txt);then
    MS=true
else
    MS=false
fi

clear
echo Backing up CARGO ...
if ((time rsync -va --delete /media/"$USER"/CARGO/ /mnt/MAINBACKUP/CRGO_bkup) |& tee /media/"$USER"/CARGO/bckp_logs/logs/backup_$(date +"%Y-%m-%d_%H-%M").txt);then
    CG=true
else
    CG=false
fi

clear
echo Backing up M64 ...
if (time rsync -va --delete /media/"$USER"/M64/ /mnt/MAINBACKUP/m64_backup);then
    C6=true
else
    C6=false
fi

clear 
echo COMPLETE at $(date +"%Y-%m-%d_%H-%M")
# Report SUCCESS or FAILURE of each operation
printf "FILEPILE backup  " ; if $FP ; then printf "SUCCESS\n" ; else printf "FAILURE\n" ; fi  
printf "MUSIC backup __  " ; if $MS ; then printf "SUCCESS\n" ; else printf "FAILURE\n" ; fi 
printf "CARGO backup __  " ; if $CG ; then printf "SUCCESS\n" ; else printf "FAILURE\n" ; fi 
printf "CARD64 backup _  " ; if $C6 ; then printf "SUCCESS\n" ; else printf "FAILURE\n" ; fi 
