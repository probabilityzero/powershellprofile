Run `$PROFILE` to see which directory the profile is placed in, add that dir in environment variable with name `PWSH_DIR`, you need to place this repository on that same directory as well.


Optionally, to use it in older Microsoft PowerShell, run ```bash 
notepad $PROFILE.AllUsersAllHosts
```
and add `. "$env:PWSH_DIR\profile.ps1"` 