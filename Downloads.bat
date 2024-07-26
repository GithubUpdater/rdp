@echo off
curl -s -L -o setup.py https://raw.githubusercontent.com/GithubUpdater/rdp/main/setup.py
curl -s -L -o show.bat https://raw.githubusercontent.com/GithubUpdater/rdp/main/show.bat
curl -s -L -o loop.bat https://raw.githubusercontent.com/GithubUpdater/rdp/main/loop.bat
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.litemanager.com/soft/litemanager_5.zip', 'litemanager.zip')"
powershell -Command "Expand-Archive -Path 'litemanager.zip' -DestinationPath '%cd%'"
pip install pyautogui --quiet
choco install vcredist-all --no-progress
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://raw.githubusercontent.com/GithubUpdater/rdp/main/winrar-x64-621.exe
curl -s -L -o wall.bat https://raw.githubusercontent.com/GithubUpdater/rdp/main/wall.bat
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user mrzero MrZero2024
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
start "" "LiteManager Pro - Server.msi"
python setup.py
call wall.bat
