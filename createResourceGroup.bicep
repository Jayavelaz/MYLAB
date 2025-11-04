// createResourceGroup.bicep
targetScope = 'subscription'

@description('GITTEST')
param rgName string

@description('Eastus')
param location string = resourceGroup().location

resource newResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
}
