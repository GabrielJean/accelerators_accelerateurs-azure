resource "azurerm_policy_set_definition" "pbmm" {
  name         = "testPolicySet"
  policy_type  = "Custom"
  display_name = "PBMM Policy Set"

  policy_definitions = <<POLICY_DEFINITIONS
    [
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988",
        "parameters": {
            "listOfAllowedLocations": {
                "value": [
                    "canadacentral",
                    "canadaeast",
                    "global"
                ]
            }
        }
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/a9b99dd8-06c5-4317-8629-9d86a3c6e7d9"
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/a7ff3161-0087-490a-9ad9-ad6217f4f43a"
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c",
        "parameters": {
            "listOfAllowedLocations": {
                "value": [
                    "canadacentral",
                    "canadaeast",
                    "global"
                ]
            }
        }
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/2835b622-407b-4114-9198-6f7064cbe0dc"
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/36d49e87-48c4-4f2e-beed-ba4ed02b71f5"
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/3c1b3629-c8f8-4bf6-862c-037cb9094038",
        "parameters": {
            "logAnalytics": {
                "value": "/subscriptions/[subscriptionId]/resourcegroups/[resourceGroup]/providers/microsoft.operationalinsights/workspaces/[workspaceName]"
            }
        }
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/5ee9e9ed-0b42-41b7-8c9c-3cfb2fbe2069",
        "parameters": {
            "logAnalytics": {
                "value": "/subscriptions/[subscriptionId]/resourcegroups/[resourceGroup]/providers/microsoft.operationalinsights/workspaces/[workspaceName]"
            }
        }
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/86a912f6-9a06-4e26-b447-11b16ba8659f"
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/053d3325-282c-4e5c-b944-24faffd30d77",
        "parameters": {
            "logAnalytics": {
                "value": "/subscriptions/[subscriptionId]/resourcegroups/[resourceGroup]/providers/microsoft.operationalinsights/workspaces/[workspaceName]"
            }
        }
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/0868462e-646c-4fe3-9ced-a733534b6a2c",
        "parameters": {
            "logAnalytics": {
                "value": "/subscriptions/[subscriptionId]/resourcegroups/[resourceGroup]/providers/microsoft.operationalinsights/workspaces/[workspaceName]"
            }
        }
    },
    {
        "policyDefinitionId": "/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
        "parameters": {
            "listOfAllowedSKUs": {
                "value": [
                    "Standard_LRS",
                    "Premium_LRS",
                    "Standard_GRS"
                ]
            }
        }
    }
]
POLICY_DEFINITIONS
}