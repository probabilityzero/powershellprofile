oh-my-posh init pwsh --config "C:\Users\prime\AppData\Local\Programs\oh-my-posh\themes\avit.omp.json" | Invoke-Expression

Remove-Alias -Name r -ErrorAction SilentlyContinue

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

function pg {
    Set-Location -Path "E:\space\playground"
}

function repo {
    Set-Location -Path "E:\repositories"
}

function space {
    Set-Location -Path "E:\space"
}


function ll {
    Get-ChildItem -Force -Format List
}

function s {
    param (
        [string]$appName
    )
    scoop install $appName -g
}

function pf {
    notepad $PROFILE
}


function ~ {
    cd ~
}

function de {
    Set-Location -Path "E:\Downloads"
}

function dd {
    Set-Location -Path "D:\Downloads"
}

function c {
    Clear-Host
}

function h {
    Get-History
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


# Utilities
. "C:\Users\prime\Documents\PowerShell\Utilities\GitShortcuts.ps1"
