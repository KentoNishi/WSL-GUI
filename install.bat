@echo on
wsl eval 'TMP=$(mktemp -d);curl "https://github.com/KentoNishi/WSL-GUI/archive/v3.zip" -o "${TMP}/executable.zip" -J -L;unzip -o "${TMP}/executable.zip" -d "${TMP}/files";mv "${TMP}/files/WSL-GUI-3" "${TMP}/files/WSL-GUI"; cp -r "${TMP}/files/WSL-GUI/" "/mnt/c/users/%username%/"'
"%userprofile%\WSL-GUI\setup.bat"