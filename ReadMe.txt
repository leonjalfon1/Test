AUTOMATIC
Open Powershell as administrator
Run: Set-ExecutionPolicy Unrestricted -Force
Run: .\install-hooks.ps1

MANUAL
Take a bakup of the folder C:\Program Files\Git\mingw64\share\git-core\templates
Copy the files in the hook folder in the following path: "C:\Program Files\Git\mingw64\share\git-core\templates\hooks"