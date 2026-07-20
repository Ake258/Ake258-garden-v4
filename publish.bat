@echo off
chcp 65001 >nul
echo ========================================
echo   Ake258 口腔医学知识库 - 一键发布
echo ========================================
echo.

cd /d F:\obsidian\ake258-garden

echo [1/3] 检查更改...
git status --short

echo.
echo [2/3] 提交更改...
git add -A
git commit -m "update: %date% %time%"

echo.
echo [3/3] 推送到 GitHub...
git push

echo.
echo ========================================
echo   发布完成！等待 Cloudflare 自动部署...
echo   约 1-2 分钟后访问 https://ake258.online
echo ========================================
pause
