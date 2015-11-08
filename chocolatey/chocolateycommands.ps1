Function ChocolateyCommands()
{
    $command = read-host "List Installed(l), Upgrade(u), First Time Setup (ft), Install Chocolatey (install), Exit(E)"

    IF($command -eq "u")
    {
      cup all
    }

    IF($command -eq "l")
    {
      choco list --local-only
    }

    IF($command -eq "install")
    {
      iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
    }

    IF($command -eq "ft")
    {
      choco feature enable -n allowGlobalConfirmation
      choco install basicsetup.config
    }

    IF($command -ne "e")
    {
      ChocolateyCommands
    }
}

ChocolateyCommands
