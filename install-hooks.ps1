$targetExist = Test-Path "C:\Program Files\Git\mingw64\share\git-core\templates\hooks"

if($targetExist -eq $false){Write-Host "Path {C:\Program Files\Git\mingw64\share\git-core\templates\hooks} not found, please verify that git client is installed" -ForegroundColor Red}
else
{
    if(-not(Test-Path "hooks")){Write-Host "Path {hooks} not found, please verify that you are running the script from the right directory" -ForegroundColor Red}
    try
    {
        Write-Host "Installing git hooks..." -ForegroundColor Yellow
        Copy-Item -Path "C:\Program Files\Git\mingw64\share\git-core\templates" -Destination "C:\Program Files\Git\mingw64\share\git-core\templates-backup"
        Copy-Item -Path ".\hooks\*" -Destination "C:\Program Files\Git\mingw64\share\git-core\templates\hooks"
        Write-Host "Installation Successfully Ends" -ForegroundColor Green
    }
    catch
    {
        Write-Host "Unexpected error, Exception: $_" -ForegroundColor Red
    }
}