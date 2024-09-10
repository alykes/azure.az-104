# azure.az-104

## Create the storage container first  
`az storage container create --name az104-tfstate --account-name <StorageAccountName>`  

## Get your subscription ID  
`az account list | findstr /i '\"id\":'`  
or use:  
`az account list | findstr /i '\"id\":' | ForEach-Object { $_ -replace '^\s*', '' -replace '"id": "', '' -replace '",$', '' }`  

## Smash out the terraform  
`terraform init`  
`terraform plan -out ./az104.tfplan`  
`terraform apply ./az104.tfplan`  
`terraform destroy`  

## Delete the storage container  
`az storage container delete --name az104-tfstate --account-name <StorageAccountName>`  


## Using Powershell to Create and Remove Containers  
```
resourceGroupName = "<resourceGroupName>"                                                                           
$storageAccountName = "<storagaAccountName>"
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
$ctx = $storageAccount.Context
$containerName = "<containerName>"
New-AzStorageContainer -Name $containerName -Context $ctx
Remove-AzStorageContainer -Name $containerName -Context $ctx
Get-AzStorageContainer -Context $ctx
```

## Import an exisitng resource into terraform state  
Add the config block to match the existing resource  
```
resource "azurerm_resource_group" "rg_az104" {
  name     = "rg.az104"
  location = "AustraliaEast"
}
```  

Get the subscription info  
`az group show --name rg_az104 --query id --output tsv`  

Import the resource into the statefile  
`terraform import azurerm_resource_group.rg_az104 /subscriptions/<your-subscription-id>/resourceGroups/rg.az104`  

Run a terraform plan to ensure it's imported correctly  
`terraform plan -out .\az104.tfplan` 

### NOTE 
Please note that Azure can be slow when updating resources, and it may take some time for changes to propagate. As a  result, creating, deleting, and then recreating containers might occasionally lead to failed creation attempts without  any error messages. 🤦‍♂️