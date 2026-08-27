# VSCode.install
Script shell d'installation de la dernière version de VSCode


Le script doit être dans le répertoire où toutes les versions de VSCode sont installées :
 
```bash
[faro@pepe VSCode-linux-x64]$ ls -l
    total 8
    drwxr-xr-x 1 faro faro 572 27 août  09:59 1.133.0
    drwxr-xr-x 1 faro faro 558 25 août  16:43 1.135.0
    drwxr-xr-x 1 faro faro 206 27 août  10:02 archives
    lrwxrwxrwx 1 faro faro   7 27 août  10:02 current -> 1.135.0
    -rwxr-xr-x 1 faro faro 666 27 août  10:08 install.new.archive.sh
```

Il exécutera les étapes suivantes :
1. Téléchargement de la dernière version
2. Extraction de cette version
3. Renommage du répertoire d'extraction par son n° de version
4. Création du lien symbolique de démarrage sur la version courante
5. Suppression de la plus ancienne version
  - répertoire d'exécution
  - archives
