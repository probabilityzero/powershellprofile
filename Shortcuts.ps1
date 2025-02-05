
function pf {
    code $env:PWSH_DIR
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

