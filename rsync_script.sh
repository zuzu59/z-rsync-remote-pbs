#!/usr/bin/env bash
#Petit script pour exécuter un rsync entre la source et le remote via le port 2222
#zf251107.1633, zf251107.1653

echo -e "\nExécute le rsync...\n"

cd ~/dev/z-rsync-remote-pbs

date +"%F %T"

time rsync -n --delete -r -v -t --progress --stats --modify-window=1  -e "ssh -p 2222" /mnt/datastore/ext-1/ master@localhost:/volume2/BIGDATA/data/backup_pbs_crissier_ext-1_251107.1648/

echo ""
date +"%F %T"

date > tata.txt

echo -e "\nFin du procéssus...\n"

