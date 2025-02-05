oh-my-posh init pwsh --config "$env:PWSH_DIR\themes\synth.omp.json" | Invoke-Expression

function bolt {
    cd  "E:\Windows\Apps\bolt.diy"
    pnpm run dev
}


. "$env:PWSH_DIR\Shortcuts.ps1"

# Utilities
. "$env:PWSH_DIR\Utilities\Git.ps1"
. "$env:PWSH_DIR\Utilities\Scoop.ps1"
. "$env:PWSH_DIR\Utilities\Anaconda.ps1"
. "$env:PWSH_DIR\Utilities\WSL.ps1"

. "$env:PWSH_DIR\Utilities\Navigation.ps1"

. "$env:PWSH_DIR\Modules\Chololatey.ps1"