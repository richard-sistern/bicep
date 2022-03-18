resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'toylnchstore1567657676'
  location: 'westus3'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

// Connect-AzAccount

// $context = Get-AzSubscription -SubscriptionName 'Concierge Subscription'
// Set-AzContext $context

// Get-AzSubscription

// Set-AzDefault -ResourceGroupName learn-89a1dfc6-8a21-4852-a713-a71335b24370

// New-AzResourceGroupDeployment -TemplateFile main.bicep

resource appServicePlan 'Microsoft.Web/serverFarms@2021-03-01' = {
  name: 'toy-product-launch-plan-starter'
  location: 'westus3'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2021-03-01' = {
  name: 'toy-product-launch-110101101'
  location: 'westus3'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}

// New-AzResourceGroupDeployment -TemplateFile examples/toy_demo.bicep -ResourceGroupName "learn-c6694696-2422-4b55-8c60-721ce6152960"
