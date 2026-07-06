param (
    [string]$SubscriptionNameOrId
)

$ErrorActionPreference = "Stop"

Write-Host "==============================================" -ForegroundColor Red
Write-Host "      Cleaning Up LAB-001 Sandbox Setup" -ForegroundColor Red
Write-Host "==============================================" -ForegroundColor Red

try {
    # If a specific subscription was requested, switch to it
    if ($SubscriptionNameOrId) {
        Write-Host "[*] Setting active subscription to: $SubscriptionNameOrId" -ForegroundColor Yellow
        az account set --subscription $SubscriptionNameOrId
    }

    Write-Host "[*] Deleting Resource Group 'rg-lab001-dev'..." -ForegroundColor Yellow
    # Running with --no-wait so that it initiates immediately and releases the terminal
    az group delete --name "rg-lab001-dev" --yes --no-wait
    Write-Host "[+] Cleanup command sent! Azure will delete the resource group in the background." -ForegroundColor Green
} catch {
    Write-Host "[!] Failed to delete resource group. Ensure Azure CLI is authenticated." -ForegroundColor Red
    exit 1
}

