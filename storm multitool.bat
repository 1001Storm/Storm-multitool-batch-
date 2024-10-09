@echo off
title STORM Multitool
color 05
:: Affichage ASCII "STORM"
echo.
echo    SSSSS   TTTTTTTT  OOOOO   RRRRRR    M     M  
echo   S           TT    O     O  R     R  MM   MM  
echo    SSSSS      TT    O     O  RRRRRR   M M M M  
echo         S     TT    O     O  R   R    M  M  M  
echo    SSSSS      TT     OOOOO   R    RR  M     M  
echo.
echo =============================================
echo          Bienvenue dans le STORM Multitool
echo =============================================
timeout /t 2 /nobreak >nul

:menu
cls
color 05
echo Choisissez une option :
echo.
echo 1. Afficher l'adresse IP locale
echo 2. Scanner les ports ouverts
echo 3. Voir les processus actifs
echo 4. Pinger une adresse IP ou un site
echo 5. Lancer un test de vitesse internet
echo 6. Vérifier la connectivité Internet
echo 7. Afficher l'adresse MAC
echo 8. Vider le cache DNS
echo 9. Afficher l'heure et la date
echo 10. Redémarrer le PC
echo 11. Éteindre le PC
echo 12. Quitter
echo 13. Afficher la table de routage
echo 14. Afficher les connexions réseau
echo 15. Tester la résolution DNS
echo 16. Afficher les informations système
echo 17. Afficher l'utilisation du disque
echo 18. Afficher les services en cours
echo 19. Lancer un scan avec Nmap
echo 20. Vérifier les mises à jour Windows
echo 21. Afficher l'historique des commandes
echo 22. Vérifier l'utilisation de la mémoire
echo 23. Afficher les fichiers système
echo 24. Rechercher un fichier
echo 25. Vérifier l'intégrité des fichiers système
echo 26. Lister les tâches planifiées
echo 27. Afficher les paramètres de la carte réseau
echo 28. Rechercher un texte dans un fichier
echo 29. Effectuer un tracert vers une adresse
echo 30. Lister les pilotes installés
echo 31. Afficher l'espace de stockage utilisé par un répertoire
echo 32. Déterminer l'IP publique
echo 33. Vérifier la version du système d'exploitation
echo 34. Afficher les mises à jour des logiciels installés
echo 35. Lister les utilisateurs locaux
echo 36. Accéder aux autres fonctionnalités de hacking
echo.
set /p choice=Entrez votre choix (1-36) :

if %choice%==1 goto ipconfig
if %choice%==2 goto portscan
if %choice%==3 goto processus
if %choice%==4 goto pingtest
if %choice%==5 goto speedtest
if %choice%==6 goto checkinternet
if %choice%==7 goto macaddress
if %choice%==8 goto flushdns
if %choice%==9 goto datetime
if %choice%==10 goto restart
if %choice%==11 goto shutdown
if %choice%==12 goto end
if %choice%==13 goto routetable
if %choice%==14 goto netconnections
if %choice%==15 goto dnscheck
if %choice%==16 goto systeminfo
if %choice%==17 goto diskusage
if %choice%==18 goto services
if %choice%==19 goto nmapscan
if %choice%==20 goto windowsupdates
if %choice%==21 goto commandhistory
if %choice%==22 goto memoryusage
if %choice%==23 goto sysfiles
if %choice%==24 goto searchfile
if %choice%==25 goto sfc
if %choice%==26 goto schtasks
if %choice%==27 goto netadapter
if %choice%==28 goto searchtext
if %choice%==29 goto tracert
if %choice%==30 goto drivers
if %choice%==31 goto dirspace
if %choice%==32 goto publicip
if %choice%==33 goto osversion
if %choice%==34 goto softupdates
if %choice%==35 goto localusers
if %choice%==36 goto hackingmenu

goto menu

:ipconfig
cls
echo ==============================
echo Votre adresse IP locale :
echo ==============================
ipconfig | findstr /i "IPv4"
timeout /t 5 /nobreak >nul
goto menu

:portscan
cls
echo ==============================
echo Scanner les ports ouverts...
echo ==============================
netstat -an | find "LISTEN"
timeout /t 5 /nobreak >nul
goto menu

:processus
cls
echo ==============================
echo Processus actifs :
echo ==============================
tasklist
timeout /t 5 /nobreak >nul
goto menu

:pingtest
cls
set /p target=Entrez l'adresse IP ou le site à pinger :
echo ==============================
echo Ping en cours pour %target%...
echo ==============================
ping %target%
timeout /t 5 /nobreak >nul
goto menu

:speedtest
cls
echo ==============================
echo Tester la vitesse de connexion...
echo ==============================
ping www.google.com -n 10
timeout /t 5 /nobreak >nul
goto menu

:checkinternet
cls
echo ==============================
echo Vérification de la connexion internet...
echo ==============================
ping www.google.com -n 1 | find "TTL="
if %errorlevel%==0 (
    echo Connexion internet active !
) else (
    echo Pas de connexion internet.
)
timeout /t 5 /nobreak >nul
goto menu

:macaddress
cls
echo ==============================
echo Votre adresse MAC :
echo ==============================
getmac
timeout /t 5 /nobreak >nul
goto menu

:flushdns
cls
echo ==============================
echo Vider le cache DNS...
echo ==============================
ipconfig /flushdns
timeout /t 5 /nobreak >nul
goto menu

:datetime
cls
echo ==============================
echo Date et heure actuelles :
echo ==============================
echo Date : %date%
echo Heure : %time%
timeout /t 5 /nobreak >nul
goto menu

:restart
cls
echo ==============================
echo Redémarrage du PC en cours...
echo ==============================
shutdown /r /f /t 0
goto end

:shutdown
cls
echo ==============================
echo Arrêt du PC en cours...
echo ==============================
shutdown /s /f /t 0
goto end

:routetable
cls
echo ==============================
echo Table de routage :
echo ==============================
route print
timeout /t 5 /nobreak >nul
goto menu

:netconnections
cls
echo ==============================
echo Connexions réseau actives :
echo ==============================
netstat -an
timeout /t 5 /nobreak >nul
goto menu

:dnscheck
cls
echo ==============================
echo Tester la résolution DNS pour google.com :
echo ==============================
nslookup google.com
timeout /t 5 /nobreak >nul
goto menu

:systeminfo
cls
echo ==============================
echo Informations système :
echo ==============================
systeminfo
timeout /t 5 /nobreak >nul
goto menu

:diskusage
cls
echo ==============================
echo Utilisation du disque :
echo ==============================
wmic logicaldisk get size,freespace,caption
timeout /t 5 /nobreak >nul
goto menu

:services
cls
echo ==============================
echo Services en cours d'exécution :
echo ==============================
sc query state= all
timeout /t 5 /nobreak >nul
goto menu

:nmapscan
cls
echo ==============================
echo Lancer un scan Nmap...
echo ==============================
set /p target=Entrez l'adresse IP ou le domaine à scanner :
nmap %target%
timeout /t 5 /nobreak >nul
goto menu

:windowsupdates
cls
echo ==============================
echo Vérification des mises à jour Windows...
echo ==============================
powershell -command "Get-WindowsUpdate"
timeout /t 5 /nobreak >nul
goto menu

:commandhistory
cls
echo ==============================
echo Historique des commandes :
echo ==============================
doskey /history
timeout /t 5 /nobreak >nul
goto menu

:memoryusage
cls
echo ==============================
echo Utilisation de la mémoire :
echo ==============================
wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /format:list
timeout /t 5 /nobreak >nul
goto menu

:sysfiles
cls
echo ==============================
echo Affichage des fichiers système :
echo ==============================
dir C:\Windows\System32
timeout /t 5 /nobreak >nul
goto menu

:searchfile
cls
set /p file=Entrez le nom du fichier à rechercher :
echo ==============================
echo Recherche du fichier %file%...
echo ==============================
dir /s /b %file%
timeout /t 5 /nobreak >nul
goto menu

:sfc
cls
echo ==============================
echo Vérification de l'intégrité des fichiers système :
echo ==============================
sfc /scannow
timeout /t 5 /nobreak >nul
goto menu

:schtasks
cls
echo ==============================
echo Lister les tâches planifiées :
echo ==============================
schtasks /query
timeout /t 5 /nobreak >nul
goto menu

:netadapter
cls
echo ==============================
echo Afficher les paramètres de la carte réseau :
echo ==============================
wmic nic get description,MACAddress,NetEnabled
timeout /t 5 /nobreak >nul
goto menu

:searchtext
cls
set /p filepath=Entrez le chemin du fichier :
set /p searchtext=Entrez le texte à rechercher :
echo ==============================
echo Recherche du texte "%searchtext%" dans le fichier %filepath%...
echo ==============================
findstr /i "%searchtext%" %filepath%
timeout /t 5 /nobreak >nul
goto menu

:tracert
cls
set /p target=Entrez l'adresse IP ou le site à tracer :
echo ==============================
echo Traceroute vers %target%...
echo ==============================
tracert %target%
timeout /t 5 /nobreak >nul
goto menu

:drivers
cls
echo ==============================
echo Liste des pilotes installés :
echo ==============================
driverquery
timeout /t 5 /nobreak >nul
goto menu

:dirspace
cls
set /p dirpath=Entrez le chemin du répertoire :
echo ==============================
echo Calcul de l'espace utilisé dans le répertoire %dirpath%...
echo ==============================
dir %dirpath% /s
timeout /t 5 /nobreak >nul
goto menu

:publicip
cls
echo ==============================
echo Déterminer l'IP publique :
echo ==============================
curl ifconfig.me
timeout /t 5 /nobreak >nul
goto menu

:osversion
cls
echo ==============================
echo Vérifier la version du système d'exploitation :
echo ==============================
ver
timeout /t 5 /nobreak >nul
goto menu

:softupdates
cls
echo ==============================
echo Afficher les mises à jour des logiciels installés :
echo ==============================
wmic qfe list brief /format:table
timeout /t 5 /nobreak >nul
goto menu

:localusers
cls
echo ==============================
echo Liste des utilisateurs locaux :
echo ==============================
net user
timeout /t 5 /nobreak >nul
goto menu

:end
cls
echo Merci d'avoir utilisé STORM Multitool !
timeout /t 2 /nobreak >nul
exit

:hackingmenu
cls
color 0C
echo Choisissez une option :
echo.
echo 1. Exécuter un scan de réseau
echo 2. Détecter les vulnérabilités
echo 3. Lancer un brute force sur un service
echo 4. Analyser les journaux de sécurité
echo 5. Spoofing d'adresse MAC
echo 6. Créer un faux point d'accès Wi-Fi
echo 7. Effectuer un phishing par e-mail
echo 8. Exploiter une faille XSS
echo 9. Tester un déni de service (DoS)
echo 10. Vérifier la sécurité des mots de passe
echo 11. Effectuer une injection SQL
echo 12. Créer un cheval de Troie
echo 13. Lancer une attaque de réseau sans fil
echo 14. Détecter les vulnérabilités de SSL
echo 15. Analyser un fichier pour malware
echo 16. Tester des attaques par Dictionnaire
echo 17. Déterminer la configuration des ports
echo 18. Simuler une attaque de Phishing
echo 19. Analyser les vulnérabilités de l'application
echo 20. Détecter les failles d'authentification
echo 21. Scanner les certificats SSL
echo 22. Créer un script de payload
echo 23. Analyser la sécurité des protocoles
echo 24. Simuler une attaque par Injection Commande
echo 25. Lancer un test de vulnérabilité de réseau
echo.
echo 0. Retour au menu principal
echo.
set /p hackingchoice=Entrez votre choix (1-25) :

if %hackingchoice%==1 goto networkscan
if %hackingchoice%==2 goto vulnscan
if %hackingchoice%==3 goto bruteForce
if %hackingchoice%==4 goto loganalysis
if %hackingchoice%==5 goto macspoof
if %hackingchoice%==6 goto fakeAP
if %hackingchoice%==7 goto phishing
if %hackingchoice%==8 goto xss
if %hackingchoice%==9 goto dos
if %hackingchoice%==10 goto passwordcheck
if %hackingchoice%==11 goto sqlinject
if %hackingchoice%==12 goto trojan
if %hackingchoice%==13 goto wifiattack
if %hackingchoice%==14 goto sslvuln
if %hackingchoice%==15 goto malware
if %hackingchoice%==16 goto dictattack
if %hackingchoice%==17 goto portconfig
if %hackingchoice%==18 goto phishingtest
if %hackingchoice%==19 goto appvuln
if %hackingchoice%==20 goto authfail
if %hackingchoice%==21 goto sslcerts
if %hackingchoice%==22 goto payloadscript
if %hackingchoice%==23 goto protanalyze
if %hackingchoice%==24 goto cmdinject
if %hackingchoice%==25 goto netvuln
if %hackingchoice%==0 goto menu

goto hackingmenu

:networkscan
cls
echo ==============================
echo Scan de réseau en cours...
echo ==============================
:: Insérer commande pour scan réseau ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:vulnscan
cls
echo ==============================
echo Détection des vulnérabilités en cours...
echo ==============================
:: Insérer commande pour détection des vulnérabilités ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:bruteForce
cls
echo ==============================
echo Brute Force en cours...
echo ==============================
set /p target=Entrez le nom d'utilisateur de la cible :
:: Insérer commande pour brute force ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:loganalysis
cls
echo ==============================
echo Analyse des journaux de sécurité...
echo ==============================
: Insérer commande pour analyse des journaux ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:macspoof
cls
echo ==============================
echo Spoofing d'adresse MAC en cours...
echo ==============================
:: Insérer commande pour spoofing MAC ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:fakeAP
cls
echo ==============================
echo Création d'un faux point d'accès Wi-Fi...
echo ==============================
:: Insérer commande pour création de faux AP ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:phishing
cls
echo ==============================
echo Phishing par e-mail en cours...
echo ==============================
set /p email=Entrez l'adresse e-mail cible :
:: Insérer commande pour phishing par e-mail ici
echo Envoi du lien de phishing à %email%...
timeout /t 5 /nobreak >nul
goto hackingmenu

:xss
cls
echo ==============================
echo Exploitation de faille XSS en cours...
echo ==============================
:: Insérer commande pour XSS ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:dos
cls
echo ==============================
echo Test de déni de service (DoS) en cours...
echo ==============================
:: Insérer commande pour test DoS ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:passwordcheck
cls
echo ==============================
echo Vérification de la sécurité des mots de passe...
echo ==============================
:: Insérer commande pour vérification des mots de passe ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:sqlinject
cls
echo ==============================
echo Injection SQL en cours...
echo ==============================
:: Insérer commande pour injection SQL ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:trojan
cls
echo ==============================
echo Création de cheval de Troie en cours...
echo ==============================
:: Insérer commande pour création de Troie ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:wifiattack
cls
echo ==============================
echo Attaque de réseau sans fil en cours...
echo ==============================
:: Insérer commande pour attaque Wi-Fi ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:sslvuln
cls
echo ==============================
echo Détection des vulnérabilités de SSL en cours...
echo ==============================
:: Insérer commande pour détection SSL ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:malware
cls
echo ==============================
echo Analyse des fichiers pour malware...
echo ==============================
:: Insérer commande pour analyse malware ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:dictattack
cls
echo ==============================
echo Test des attaques par dictionnaire en cours...
echo ==============================
:: Insérer commande pour attaques dictionnaire ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:portconfig
cls
echo ==============================
echo Détermination de la configuration des ports...
echo ==============================
:: Insérer commande pour configuration des ports ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:phishingtest
cls
echo ==============================
echo Phishing par e-mail en cours...
echo ==============================
set /p email=Entrez l'adresse e-mail cible :
:: Insérer commande pour phishing par e-mail ici
echo Envoi du lien de phishing à %email%...
timeout /t 5 /nobreak >nul
goto hackingmenu

:appvuln
cls
echo ==============================
echo Analyse des vulnérabilités de l'application...
echo ==============================
:: Insérer commande pour analyse des vulnérabilités ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:authfail
cls
echo ==============================
echo Détection des failles d'authentification...
echo ==============================
:: Insérer commande pour failles d'authentification ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:sslcerts
cls
echo ==============================
echo Scanner les certificats SSL...
echo ==============================
:: Insérer commande pour scanner les certificats SSL ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:payloadscript
cls
echo ==============================
echo Création d'un script de payload...
echo ==============================
:: Insérer commande pour création de payload ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:protanalyze
cls
echo ==============================
echo Analyse des protocoles de sécurité...
echo ==============================
:: Insérer commande pour analyse des protocoles ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:cmdinject
cls
echo ==============================
echo Simulation d'une attaque par injection commande...
echo ==============================
:: Insérer commande pour injection commande ici
timeout /t 5 /nobreak >nul
goto hackingmenu

:netvuln
cls
echo ==============================
echo Test de vulnérabilité de réseau en cours...
echo ==============================
:: Insérer commande pour test de vulnérabilité de réseau ici
timeout /t 5 /nobreak >nul
goto hackingmenu
