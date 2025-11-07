#!/usr/bin/env bash
# Petit script pour envoyer et exécuter un script en remote sur un serveur
#zf251107.1620, #zf251107.1634

echo -e "\nEnvoie le script sur le remote et léxécute...\n"

ssh master@100.79.152.38 'bash -s' < ./execute_script.sh

