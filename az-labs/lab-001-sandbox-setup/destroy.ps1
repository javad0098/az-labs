# destroy.ps1
$ErrorActionPreference = "Stop"

Write-Host "==============================================" -ForegroundColor Red
Write-Host "      Cleaning Up LAB-001 Sandbox Setup" -ForegroundColor Red
Write-Host "==============================================" -ForegroundColor Red

try {
    Write-Host "[*] Deleting Resource Group 'rg-lab001-dev'..." -ForegroundColor Yellow
    # Running with --no-wait so that it initiates immediately and releases the terminal
    az group delete --name "rg-lab001-dev" --yes --no-wait
    Write-Host "[+] Cleanup command sent! Azure will delete the resource group in the background." -ForegroundColor Green
} catch {
    Write-Host "[!] Failed to delete resource group. Ensure Azure CLI is authenticated." -ForegroundColor Red
    exit 1
}
