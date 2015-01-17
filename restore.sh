#!/bin/bash

# Restore backup from n days ago. See Restore chapter on https://help.ubuntu.com/community/DuplicityBackupHowto
# E.g use DARGS="--no-encryption -t 7D" if you want to restore backup from 7 days ago.
#DARGS="--no-encryption -t 7D"
DARGS="--no-encryption"

TARGET="restore/"

. config.cnf
export FTP_PASSWORD

echo "The latest backup will be restored in directory ${TARGET}"
printf "\n"

if [ -d "${TARGET}" ]; then
	echo "${TARGET} already exist, aborting!";
	exit;
fi
mkdir restore/

read -p "Press [Enter] key to start restore..."

$(which duplicity) ${DARGS} ${BACKUP_URL} ${TARGET}





