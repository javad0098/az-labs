# deploy.ps1
$ErrorActionPreference = "Stop"

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "   Deploying LAB-000: Subscription Management" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan

# 1. Check Azure CLI Login
try {
    Write-Host "[*] Checking Azure CLI login status..." -ForegroundColor Yellow
    $account = az account show --query name -o tsv 2>$null
    if ($null -eq $account -or $account -eq "") {
        Write-Host "[!] Not logged in. Launching 'az login'..." -ForegroundColor Red
        az login
    }
} catch {
    Write-Host "[!] Azure CLI is not installed or configured. Please install it first." -ForegroundColor Red
    exit 1
}

# 2. Show Active Subscription
$activeSubName = az account show --query name -o tsv
$activeSubId = az account show --query id -o tsv
Write-Host ""
Write-Host "[+] Current Active Subscription:" -ForegroundColor Green
Write-Host "    Name: $activeSubName" -ForegroundColor Green
Write-Host "    ID:   $activeSubId" -ForegroundColor Green
Write-Host ""

# 3. List All Subscriptions
Write-Host "[*] Fetching all subscriptions associated with your account..." -ForegroundColor Yellow
$subList = az account list --output json | ConvertFrom-Json

Write-Host ""
Write-Host "Available Subscriptions:" -ForegroundColor Cyan
Write-Host "--------------------------------------------------------------------------------" -ForegroundColor Cyan
$index = 0
foreach ($sub in $subList) {
    $state = if ($sub.isDefault) { "[ACTIVE]" } else { "        " }
    Write-Host "$state ($index) Name: $($sub.name)" -ForegroundColor White
    Write-Host "         ID:   $($sub.id)" -ForegroundColor DarkGray
    $index++
}
Write-Host "--------------------------------------------------------------------------------" -ForegroundColor Cyan
Write-Host ""

# 4. Instructions for Switching
Write-Host "[*] Practice Switching Subscriptions:" -ForegroundColor Yellow
Write-Host "To set a subscription as your active default, run this command in your terminal:" -ForegroundColor White
Write-Host "   az account set --subscription <ID-or-Name>" -ForegroundColor Green
Write-Host ""
Write-Host "Or in PowerShell Az Module:" -ForegroundColor White
Write-Host "   Set-AzContext -Subscription <ID-or-Name>" -ForegroundColor Green
Write-Host ""
Write-Host "[+] Lab 0 Setup Complete! (No infrastructure was deployed)." -ForegroundColor Green
