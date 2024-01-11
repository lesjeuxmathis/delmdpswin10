@echo off
pip install tkinter
pip install tk
pip install os
pip install subprocess
pip install ctypes

simpledialog, 
messagebox
rem Vérification de l'installation de Python
python --version 2>nul
if %errorlevel% neq 0 (
    echo Python n'est pas installé. Installation en cours...
    REM Remplacez l'URL suivante par le lien de téléchargement direct de Python
    REM Assurez-vous que l'URL pointe vers le fichier d'installation de Python pour Windows
    set "python_download_url=https://www.python.org/ftp/python/3.9.1/python-3.9.1-amd64.exe"
    set "python_installer=python_installer.exe"
    
    REM Téléchargement de l'installeur Python
    curl -o %python_installer% %python_download_url%
    
    REM Installation de Python
    start /wait %python_installer% /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
    
    REM Nettoyage de l'installeur
    del %python_installer%
    
    echo Installation de Python terminée.
) else (
    echo .
)

set CURRENT_USER=%USERNAME%

color a
cd .
