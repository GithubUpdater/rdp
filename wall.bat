@echo off
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GithubUpdater/rdp/main/AdminWallpaper.jpg -OutFile AdminWallpaper.jpg"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GithubUpdater/rdp/main/AdminWallpaper.jpg -OutFile AdminWallpaper.jpg"

set "TranscodedWallpaper=AdminWallpaper.jpg"
set "CachedImage=AdminWallpaper.jpg"

set "destinationDir=C:\Users\mrzero\AppData\Roaming\Microsoft\Windows\Themes"
set "cachedFileDir=C:\Users\mrzero\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

copy /y "%TranscodedWallpaper%" "%destinationDir%\AdminWallpaper.jpg"
copy /y "%CachedImage%" "%cachedFileDir%\AdminWallpaper.jpg"

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
