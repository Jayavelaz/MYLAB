// createResourceGroup.bicep
targetScope = 'subscription'

@description('The name of the resource group.')
param rgName string

@description('The location for the resource group.')
param location string = resourceGroup().location

resource newResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
}
