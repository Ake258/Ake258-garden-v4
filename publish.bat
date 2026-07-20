@echo off
chcp 65001 >nul
echo ========================================
echo   Ake258 Oral Medicine Garden - Publish
echo ========================================
echo.

cd /d F:\obsidian\ake258-garden

echo [1/3] Check changes...
git status --short

echo.
echo [2/3] Commit changes...
git add -A
git commit -m "update: %date% %time%"

echo.
echo [3/3] Push to GitHub...
git push

echo.
echo ========================================
echo   Publish complete! Wait Cloudflare deploy...
echo   Visit: https://ake258.online
echo ========================================
pause
