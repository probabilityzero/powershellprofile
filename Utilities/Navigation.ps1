
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

