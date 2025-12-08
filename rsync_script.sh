#!/usr/bin/env bash
#Petit script pour exécuter un rsync entre la source et le remote via le port 2222
#zf251107.1633, zf251208.1304

echo -e "\nExécute le rsync...\n"

cd ~/dev/z-rsync-remote-pbs

date +"%F %T"

# Pour le synogmère
#time rsync -n --delete -r -v -t --progress --stats --modify-window=1  -e "ssh -p 2222" /mnt/datastore/ext-1/ master@localhost:/volume2/BIGDATA/data/backup_pbs_crissier_ext-1_251208.1313/
time rsync     --delete -r -v -t --progress --stats --modify-window=1  -e "ssh -p 2222" /mnt/datastore/ext-1/ master@localhost:/volume2/BIGDATA/data/backup_pbs_crissier_ext-1_251208.1313/

#time rsync    --delete -r -v -t --progress --stats --modify-window=1  -e "ssh -p 2222" /mnt/datastore/ext-1/ master@localhost:/volume2/BIGDATA/data/backup_pbs_crissier_ext-1_251107.1648/
#time rsync --delete -r -v -t --progress --stats --modify-window=1  -e ssh /mnt/datastore/ext-1/ master@100.79.152.38:/volume2/BIGDATA/data/backup_pbs_crissier_ext-1_251107.1648/

# Pour le nuc-tst1
#time rsync -n --delete -r -v -t --progress --stats --modify-window=1  -e "ssh -p 22" /mnt/datastore/ext-1/ root@192.168.0.39:/mnt/pve/ext-4/data/
#time rsync --delete -r -v -t --progress --stats --modify-window=1  -e "ssh -p 22" /mnt/datastore/ext-1/ root@192.168.0.39:/mnt/pve/ext-4/data/


echo ""
date +"%F %T"

date > tata.txt

echo -e "\nFin du procéssus...\n"

