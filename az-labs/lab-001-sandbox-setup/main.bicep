targetScope = 'subscription'

param resourceGroupName string = 'rg-lab001-dev'
param location string = 'westeurope'

resource rg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: resourceGroupName
  location: location
  tags: {
    Environment: 'Dev'
    Project: 'Learning'
    Lab: '001'
  }
}

output rgId string = rg.id
