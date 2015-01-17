#!/bin/bash

. config.cnf
export FTP_PASSWORD

$(which duplicity) list-current-files ${BACKUP_URL}

printf "\n\n"

$(which duplicity) collection-status ${BACKUP_URL}
