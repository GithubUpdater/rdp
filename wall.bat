@echo off
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GithubUpdater/rdp/main/TranscodedWallpaper.jpeg -OutFile TranscodedWallpaper.jpeg"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GithubUpdater/rdp/main/CachedImage_1024_768_POS4.jpg -OutFile CachedImage_1024_768_POS4.jpg"

set "TranscodedWallpaper=TranscodedWallpaper.jpeg"
set "CachedImage=CachedImage_1024_768_POS4.jpg"

set "destinationDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes"
set "cachedFileDir=C:\Users\runneradmin\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles"

copy /y "%TranscodedWallpaper%" "%destinationDir%\TranscodedWallpaper.jpeg"
copy /y "%CachedImage%" "%cachedFileDir%\CachedImage_1024_768_POS4.jpg"

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
