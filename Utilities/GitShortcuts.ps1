# GitModule.psm1

function gitin {
    param (
        [string]$remoteUrl
    )
    git init
    git add .
    git commit -m "​"
    git branch -M main
    git remote add origin $remoteUrl
    git push -u origin main
}

function gitup {
    param (
        [string]$branch = "main" 
    )
    git add .
    git commit -m "​"
    git push origin $branch
}

function gitpu {
    param (
        [string]$branch = "main" 
    )
    git fetch
    git pull origin $branch
}

function gitig {
    param (
        [string[]]$patterns 
    )    
    $gitignorePath = ".gitignore"
    $content = $patterns -join "`r`n"
    Add-Content -Path $gitignorePath -Value $content
    Write-Output "Patterns added to .gitignore:"
    Write-Output $content
}

function Get-RepoNameFromUrl {
    param (
        [string]$repoUrl
    )

    if ($repoUrl -match "/([^/]+?)(?:\.git)?$")
    {
        return $matches[1]
    } else {
        throw "Invalid repository URL"
    }
}

function gitc {
    param (
        [string]$repoUrl,
        [string]$repoName = ""
    )

    if ($repoName -eq "") {
        $repoName = Get-RepoNameFromUrl $repoUrl
    }

    git clone $repoUrl $repoName
    Write-Output "Repository cloned into $repoName"
    cd $repoName
    explorer.exe .
}
