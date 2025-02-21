function jl {
    jupyter lab
}

function cnv {
    cd e:\space
    powershell.exe -ExecutionPolicy ByPass -NoExit -Command "& 'C:\ProgramData\Anaconda\shell\condabin\conda-hook.ps1'; conda activate 'C:\ProgramData\Anaconda'; . $env:PWSH_DIR\profile.ps1"
}

function cnva {
    cd e:\space\alpha
    powershell.exe -ExecutionPolicy ByPass -NoExit -Command "& 'C:\ProgramData\Anaconda\shell\condabin\conda-hook.ps1'; conda activate alpha; . $env:PWSH_DIR\profile.ps1"
}

function cnvd {
    cd e:\space\delta
    powershell.exe -ExecutionPolicy ByPass -NoExit -Command "& 'C:\ProgramData\Anaconda\shell\condabin\conda-hook.ps1'; conda activate delta; . $env:PWSH_DIR\profile.ps1"
}
function cnvs {
    cd e:\space\saturn
    powershell.exe -ExecutionPolicy ByPass -NoExit -Command "& 'C:\ProgramData\Anaconda\shell\condabin\conda-hook.ps1'; conda activate saturn; . $env:PWSH_DIR\profile.ps1"
}
function cnvz {
    cd e:\space\zaide
    powershell.exe -ExecutionPolicy ByPass -NoExit -Command "& 'C:\ProgramData\Anaconda\shell\condabin\conda-hook.ps1'; conda activate zaide; . $env:PWSH_DIR\profile.ps1"
}