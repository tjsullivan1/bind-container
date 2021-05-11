@minLength(2)
@maxLength(6)
param affix string = 'se'

@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param acrSku string
param location string = resourceGroup().location
param specifier string = '1234'

@allowed([
  'd'
  't'
  'p'
])
param env string = 'd'

var acrName = 'acr-${affix}-${specifier}-${env}'

resource dockerAcr 'Microsoft.ContainerRegistry/registries@2020-11-01-preview' = {
  location: resourceGroup().location
  sku: {
    name: acrSku
  }
  name: acrName
}
