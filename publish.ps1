# Ake258 口腔医学知识库 - 一键发布
$ErrorActionPreference = "Stop"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Ake258 口腔医学知识库 - 一键发布" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Set-Location F:\obsidian\ake258-garden

Write-Host "[1/3] 检查更改..." -ForegroundColor Yellow
$status = git status --short
if ($status) {
    Write-Host $status
} else {
    Write-Host "没有新更改" -ForegroundColor Green
}

Write-Host ""
Write-Host "[2/3] 提交更改..." -ForegroundColor Yellow
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
git add -A
git commit -m "update: $timestamp" --allow-empty

Write-Host ""
Write-Host "[3/3] 推送到 GitHub..." -ForegroundColor Yellow
git push

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  发布完成！" -ForegroundColor Green
Write-Host "  等待 Cloudflare 自动部署（约1-2分钟）" -ForegroundColor Green
Write-Host "  访问: https://ake258.online" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
pause
