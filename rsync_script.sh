#!/usr/bin/env bash
#Petit script pour exécuter un rsync entre la source et le remote via le port 2222
#zf251107.1633, zf251107.1638

echo -e "\nExécute le rsync...\n"

cd ~/dev/z-rsync-remote-pbs

ss -nat |grep LIST
date > tata.txt

echo -e "\nFin du procéssus...\n"

