# Script para fazer push do repositório TOTVS para o GitHub
# Execute este script manualmente para fazer o push

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "   PUSH TOTVS PARA GITHUB" -ForegroundColor Yellow
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host ""

$repoPath = "c:\Users\nicol\OneDrive\Avila\1.2 - Avilaops\1.2.2 - Products\2.2.2.11 - Totsv"
Set-Location $repoPath

Write-Host "📂 Diretório atual:" -ForegroundColor Green
Write-Host $repoPath -ForegroundColor White
Write-Host ""

Write-Host "🔍 Status do Git:" -ForegroundColor Green
git status
Write-Host ""

Write-Host "🌐 Remote configurado:" -ForegroundColor Green
git remote -v
Write-Host ""

Write-Host "🚀 Fazendo push para GitHub..." -ForegroundColor Green
Write-Host "   (Você pode precisar autenticar no navegador)" -ForegroundColor Yellow
Write-Host ""

# Tenta fazer o push
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ SUCESSO! Repositório enviado para GitHub" -ForegroundColor Green
    Write-Host "🔗 Acesse: https://github.com/avilaops/totvs" -ForegroundColor Cyan
}
else {
    Write-Host ""
    Write-Host "❌ Erro ao fazer push" -ForegroundColor Red
    Write-Host ""
    Write-Host "💡 Possíveis soluções:" -ForegroundColor Yellow
    Write-Host "   1. Configure suas credenciais do GitHub:" -ForegroundColor White
    Write-Host "      gh auth login" -ForegroundColor Gray
    Write-Host ""
    Write-Host "   2. Ou use token de acesso pessoal:" -ForegroundColor White
    Write-Host "      git remote set-url origin https://TOKEN@github.com/avilaops/totvs.git" -ForegroundColor Gray
    Write-Host ""
    Write-Host "   3. Ou use SSH:" -ForegroundColor White
    Write-Host "      git remote set-url origin git@github.com:avilaops/totvs.git" -ForegroundColor Gray
}

Write-Host ""
Write-Host "==================================================" -ForegroundColor Cyan
