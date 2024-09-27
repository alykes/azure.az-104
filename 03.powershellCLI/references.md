# Memorising Powershell and CLI commands  

Refer to the following documents for the commands that are available:  

- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/?view=azure-cli-latest)  
- [PowerShell](https://learn.microsoft.com/en-us/powershell/azure/)  

## Naming conventions for commands

### az  

There is a predictable naming system to make it easier to guess the commands, refer to the example below:  

- `az vm list`  
- `az vm create`  
- `az vm delete`  

The same naming system applies for other services  

- `az network vnet subnet list`  
- `az network vnet subnet create`  
- `az network vnet subnet delete`  

### Powershell  

For powershell, the verbs are at the beginning:  

- `Get-AzVM`  
- `New-AzVM`  
- `Remove-AzVM`  

By extension  

- `Get-AzVirtualNetworkSubnetConfig`  
- `New-AzVirtualNetworkSubnetConfig`  
- `Remove-AzVirtualNetworkSubnetConfig`  

## Further Details about managing Azure via Powershell and CLI  

Once you install the latest powershell, don't use the one that ships with windows as it will be out of date. You will need to install the extensions that you would like to use.  

## PowerShell  

- Microsoft moved from "AzureRM" modules to "Az" modules. You can't have them both running at the same time  
- You can install different versions of powershell running side-by-side  

To install Powershell, there are two steps involved:  

- Download and install Powershell  
  - Go to [PowerShell Releases](https://github.com/PowerShell/PowerShell/releases)  
  - Run the installation as Admin or sudo  
  - An additional reference [How to Install PowerShell](https://learn.microsoft.com/en-us/powershell/azure/install-azure-powershell?view=azps-12.3.0&viewFallbackFrom=azps-2.5.0)  
- Download and install the Az module  
  - `Install-Module -Name Az -AllowClobber -Repository PSGallery -Force`  
  - `Update-Module -Name Az` - To update the Az module, you can have multiple versions on the same system  
  - `get-installedModule -Name Az -AllVersions | Select-Object -Property Name, Version` - This allows you to view which versions are installed on your system  

## Connecting to your Azure Portal  

Run the following command `Connect-AzAccount`, this will open a browser for you to log in with your account  

## Switching Azure Subscriptions  

- `Get-AzSubscription`  
- `Set-AzContext -Subscription "c89043-4323-ab34"` - This will now switch you into the new subscription  
