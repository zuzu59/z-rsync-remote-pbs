#!/usr/bin/env bash
#Petit script pour exécuter un rsync entre la source et le remote via le port 2222, pour le rsync de Proxmox Crissier sur le Synogmère
#zf251107.1633, zf251209.0951, zf260711.1656, zf260909.1020



RSYNC_CMD=(
  --delete
  -r -v -t
  --progress --stats --modify-window=1
  -e "ssh -p 2222"
  /mnt/pve/ext-1/
  master@localhost:/volume1/homes/master/data/backup_proxmox_crissier_ext1_260711.1529/
)

echo -e "\nExécute le rsync en mode test...\n"
date +"%F %T"
time rsync -n "${RSYNC_CMD[@]}"
date +"%F %T"


read -p "Voulez-vous continuer le rsync sans le mode test ?"
read -p "Etes-vous certain de vouloir continuer ?"

echo -e "\nExécute le rsync...\n"
date +"%F %T"
time rsync --max-delete=20000 "${RSYNC_CMD[@]}"
date +"%F %T"


date > tata.txt
echo -e "\nFin du processus...\n"


