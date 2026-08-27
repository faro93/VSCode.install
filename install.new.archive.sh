#!/bin/bash
# Download and install latest VSCode version
# Delete oldest installed version from directory

D=$(date +%Y%m%d%H%M%S)
P="archives"
F="code-stable-x64.${D}.tar.gz"

if [ ! -d ${P} ]; then mkdir ${P}; fi

echo "Téléchargement de la dernière version de VSCode"
wget -q --show-progress "https://code.visualstudio.com/sha/download?build=stable&os=linux-x64" -O ${P}/${F}

echo "Extraction de l'archive"
tar zxf ${P}/${F}
V=$(grep '"version":' VSCode-linux-x64/resources/app/package.json | awk '{print $NF}' | sed s/[\",]//g)
echo $V
mv VSCode-linux-x64 ${V}
ln -s ${V} current

echo "Suppression de la plus ancienne version"
R=$(ls -t | tail -1)
A=$(ls -t archives/ | tail -1)
rm -rf ${R} ${A}
