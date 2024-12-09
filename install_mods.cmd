set mypath=%cd%
setlocal enabledelayedexpansion
mkdir mods

curl.exe -o "Improved Hair Menu.zip" http://workshop8.abcvg.info/archive/108600/2732662310.zip
curl.exe -o "Weapon Condition Indicator.zip" http://workshop8.abcvg.info/archive/108600/2619072426.zip
curl.exe -o "Map Legend UI.zip" http://workshop8.abcvg.info/archive/108600/2710167561.zip
curl.exe -o "Players On Map.zip" http://workshop8.abcvg.info/archive/108600/2732804047.zip
curl.exe -o "50 Wood Weight.zip" http://workshop8.abcvg.info/archive/108600/2377867605.zip
curl.exe -o "Mod Options.zip" http://workshop8.abcvg.info/archive/108600/2169435993.zip
curl.exe -o "Lifestyle: Hobbies.zip" http://workshop8.abcvg.info/archive/108600/2997342681.zip


move "%mypath%\*.zip" "%mypath%\mods"
cd mods
for /r %%f in (*.zip) do (tar -xf "%%f" -C "%mypath%\mods")

cd ./
xcopy /s "%mypath%\mods\2732662310\mods" "%userprofile%\Zomboid\mods"
xcopy /s "%mypath%\mods\2619072426\mods" "%userprofile%\Zomboid\mods"
xcopy /s "%mypath%\mods\2710167561\mods" "%userprofile%\Zomboid\mods"
xcopy /s "%mypath%\mods\2732804047\mods" "%userprofile%\Zomboid\mods"
xcopy /s "%mypath%\mods\2377867605\mods" "%userprofile%\Zomboid\mods"
xcopy /s "%mypath%\mods\2169435993\mods" "%userprofile%\Zomboid\mods"
xcopy /s "%mypath%\mods\2997342681\mods" "%userprofile%\Zomboid\mods"

pause