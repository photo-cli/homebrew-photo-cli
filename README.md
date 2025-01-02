# Homebrew Formulae Installation (macOS - Linux)

## Dependency
.NET SDK (8 or later) required for application to run and `dotnet` command should be available on your path variable.

You can either download from [Microsoft download page](https://dotnet.microsoft.com/en-us/download) or using the following Brew cask.

```
brew install dotnet-sdk --cask
```

## Configure Homebrew Tap - Third Party Repository

```shell
brew tap photo-cli/homebrew-photo-cli
```

## Install Formulae 

```shell
brew install photo-cli
```

## Uninstallation

# Uninstall Formulae

```shell
brew uninstall photo-cli
```

# Configure 

```shell
brew untap photo-cli/homebrew-photo-cli
```

# Debugging - Direct Installation from script Formulae

```shell
brew install --build-from-source ./photo-cli.rb
```
