This example creates resources with a module-created Key Vault that has RBAC authorization and purge protection enabled.

## Sample Code

### versions.tf
```hcl
terraform {
  required_version = ">= 0.13"

  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}
```

### main.tf
```hcl
module "lacework_azure_agentless_scanning" {
  source = "../.."

  integration_level                    = "SUBSCRIPTION"
  global                               = true
  create_log_analytics_workspace       = true
  region                               = "West US 2"
  included_subscriptions               = ["/subscriptions/subscription-1", "/subscriptions/subscription-2"]
  key_vault_enable_rbac_authorization  = true
  key_vault_enable_purge_protection    = true
}
```

