AUTOMATIC
Open Powershell as administrator
Run: Set-ExecutionPolicy Unrestricted -Force
Move to the repository root (where the install-hook.ps1 script is located)
Run: .\install-hooks.ps1

MANUAL
Take a bakup of the folder C:\Program Files\Git\mingw64\share\git-core\templates
Copy the files in the hook folder in the following path: "C:\Program Files\Git\mingw64\share\git-core\templates\hooks"
.
