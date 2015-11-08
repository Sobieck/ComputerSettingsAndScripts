Function ChocolateyCommands()
{
    $command = read-host "List Installed(l), Upgrade(u), Install Chocolatey (install), First Time Setup (ft), Exit(E)"

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
