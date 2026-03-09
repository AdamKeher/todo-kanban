# package.ps1
# Automates the packaging of the VS Code extension into a .vsix file.

$ErrorActionPreference = "Stop"

Write-Host "--- Starting AK74 Extension Packaging ---" -ForegroundColor Cyan

# 1. Check for node_modules
if (-not (Test-Path "node_modules")) {
    Write-Host "[1/3] node_modules not found. Installing dependencies..." -ForegroundColor Yellow
    npm install
} else {
    Write-Host "[1/3] node_modules found. Skipping install." -ForegroundColor Gray
}

# 2. Compile the extension
Write-Host "[2/3] Compiling extension..." -ForegroundColor Yellow
npm run vscode:prepublish

# 3. Package as .vsix
Write-Host "[3/3] Creating .vsix package..." -ForegroundColor Yellow
# Use npx to run vsce without requiring a global installation.
# The --no-yarn flag is used because the project is npm-based.
npx @vscode/vsce package --no-yarn

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nSuccessfully packaged extension!" -ForegroundColor Green
    $package = Get-ChildItem *.vsix | Sort-Object LastWriteTime -Descending | Select-Object -First 1
    Write-Host "Package: $($package.FullName)" -ForegroundColor White
} else {
    Write-Host "`nPackaging failed." -ForegroundColor Red
    exit $LASTEXITCODE
}
