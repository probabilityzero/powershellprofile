function spi {
    param (
        [string]$appName
    )
    scoop install $appName -g
}

function spu {
    param (
        [string]$appName
    )
    scoop uninstall $appName
}
