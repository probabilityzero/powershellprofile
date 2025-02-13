
function gitn {
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

function gitu {
    param (
        [string]$branch = "main" 
    )
    git add .
    git commit -m "​"
    git push origin $branch
}
function gits {
    sourcegit .
}

function gitp {
    param (
        [string]$branch = "main" 
    )
    git fetch
    git pull origin $branch
}

function gitg {
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
    Set-Location $repoName
    explorer.exe .
}
