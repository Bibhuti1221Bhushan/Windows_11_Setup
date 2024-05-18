# ---------------------------------------------------------- #
# Author : Bibhuti Bhushan                                   #
# Github : https://github.com/Bibhuti1221Bhushan/Dot-Files   #
# ---------------------------------------------------------- #

# GET WINDOWS VERSION
# ~~~~~~~~~~~~~~~~~~~
$WindowsVersion = (Get-WmiObject -Class Win32_OperatingSystem).OperatingSystemSKU
if ($WindowsVersion -eq 101) 
{
    Write-Host ""
    Write-Host -ForegroundColor Yellow "Info : " -NoNewline; Write-Host -ForegroundColor Green "Windows 11 Home"
    Write-Host ""
    $KEYS = "TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
}
elseif ($WindowsVersion -eq 48) 
{
    Write-Host ""
    Write-Host -ForegroundColor Yellow "Info : " -NoNewline; Write-Host -ForegroundColor Green "Windows 11 Pro" 
    Write-Host ""
    $KEYS = "W269N-WFGWX-YVC9B-4J6C9-T83GX"
}
elseif ($WindowsVersion -eq 49) 
{
    Write-Host ""
    Write-Host -ForegroundColor Yellow "Info : " -NoNewline; Write-Host -ForegroundColor Green "Windows 11 Enterprise"
    Write-Host ""
    $KEYS = "NPPR9-FWDCX-D2C8J-H872K-2YT43"
}
elseif ($WindowsVersion -eq 121) 
{
    Write-Host ""
    Write-Host -ForegroundColor Yellow "Info : " -NoNewline; Write-Host -ForegroundColor Green "Windows 11 Education"
    Write-Host ""
    $KEYS = "NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
}
else 
{
    Write-Host ""
    Write-Host -ForegroundColor Blue "Info : " -NoNewline; Write-Host -ForegroundColor Red "UnKnown Windows Edition"
    Write-Host ""
    Break
}

# FUNCTION : ACTIVATE WINDOWS 11
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Function Windows_11 {
    Try 
    {
        SLMGR /IPK $KEYS
        Start-Sleep -Seconds 5
        SLMGR /SKMS kms9.msguides.com
        Start-Sleep -Seconds 5
        SLMGR /ATO
        Start-Sleep -Seconds 5
        Write-Host -ForegroundColor Yellow "Info : " -NoNewline; Write-Host -ForegroundColor Green "Success Windows 11"
        Write-Host ""
    } 
    Catch 
    {
        Write-Host -ForegroundColor Blue "Info : " -NoNewline; Write-Host -ForegroundColor Red "Failed Windows 11"
        Write-Host ""
        Break
    }
}

# RUN FUNCTION
# ~~~~~~~~~~~~
Windows_11
