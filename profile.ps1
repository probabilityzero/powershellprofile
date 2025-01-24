oh-my-posh init pwsh --config "$env:PWSH_DIR\themes\synth.omp.json" | Invoke-Expression

function e {
    param (
        [string]$path = '.'
    )
    Start-Process explorer.exe -ArgumentList (Resolve-Path $path)
}

function .. {
    cd ..
}

function ... {
    cd ...
}


function ~ {
    cd ~
}

function dd {
    Set-Location -Path "D:\Downloads"
}

function ed {
    Set-Location -Path "E:\Downloads"
}

function pg {
    Set-Location -Path "E:\space\playground"
}

function er {
    Set-Location -Path "E:\archive\repositories"
}

function es {
    Set-Location -Path "E:\space"
}

function ev {
    Set-Location -Path "E:\space\alpha-v"
}


function sw {
    wsl --shutdown
}

function pf {
    notepad $PROFILE
}

function c {
    Clear-Host
}

function h {
    Get-History
}

function ll {
    Get-ChildItem -Force -Format List
}

function size {
    Get-ChildItem -Directory | ForEach-Object {
        $folderSize = (Get-ChildItem -Path $_.FullName -Recurse | Measure-Object -Property Length -Sum).Sum
        [PSCustomObject]@{
            Name = $_.Name
            Size = [math]::round($folderSize / 1MB, 2)
        }
    } | Sort-Object -Property Size -Descending
}

function jl {
    param (
        [string]$option = ' '
    )
    jupyter notebook --no-browser $option
}

function cb {
    pwsh.exe -ExecutionPolicy ByPass -NoExit -Command "& 'C:\ProgramData\Anaconda\shell\condabin\conda-hook.ps1'; conda activate 'C:\ProgramData\Anaconda'; . $env:PWSH_DIR\profile.ps1"
}

# Utilities
. "$env:PWSH_DIR\Utilities\GitShortcuts.ps1"
. "$env:PWSH_DIR\Utilities\ScoopShortcuts.ps1"

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
