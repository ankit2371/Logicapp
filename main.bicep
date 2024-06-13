param logicAppName string
param location string = resourceGroup().location

resource logicApp 'Microsoft.Logic/workflows@2016-06-01' = {
  name: logicAppName
  location: location
  properties: {
    definition: json(loadTextContent('./logicapp.json'))
    parameters: {}
  }
}
