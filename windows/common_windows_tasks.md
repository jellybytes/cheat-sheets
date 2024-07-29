# Rename Files with PowerShell
Get-ChildItem *.txt | Rename-Item -NewName { $_.Name.Replace('.txt','.log') }