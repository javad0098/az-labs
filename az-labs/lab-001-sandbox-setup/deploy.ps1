# deploy.ps1
$ErrorActionPreference = "Stop"

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "      Deploying LAB-001 Sandbox Setup" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan

# 1. Verify Azure CLI login status
try {
    Write-Host "[*] Checking Azure CLI login..." -ForegroundColor Yellow
    $account = az account show --query name -o tsv 2>$null
    if ($null -eq $account -or $account -eq "") {
        Write-Host "[!] Not logged in. Launching 'az login'..." -ForegroundColor Red
        az login
    } else {
        Write-Host "[+] Logged in successfully. Current subscription: $account" -ForegroundColor Green
    }
} catch {
    Write-Host "[!] Azure CLI not found or errored. Please ensure Azure CLI is installed." -ForegroundColor Red
    exit 1
}

# 2. Deploy Bicep template at Subscription scope
Write-Host "[*] Deploying Bicep template (main.bicep) at subscription target scope..." -ForegroundColor Yellow
az deployment sub create `
  --name "lab001-sub-deployment" `
  --location "westeurope" `
  --template-file "main.bicep"

Write-Host "[+] Deployment complete! Resource Group 'rg-lab001-dev' has been created." -ForegroundColor Green
