#!/usr/bin/env bash
#Exécute le script via deux tunnels ssh imbriqués
#zf251107.1624, #zf251107.1635

echo -e "\nCreuse les tunnels et exécute le script...\n"

ssh -J root@z.zufferey.com:1822                    \
    -R 2222:localhost:22                             \
    root@192.168.0.40                               \
    'bash -lc "./dev/z-rsync-remote-pbs/rsync_script.sh"'   # <‑‑ le script à exécuter

