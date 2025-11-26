module "lacework_azure_agentless_scanning" {
  source = "../.."

  integration_level                    = "SUBSCRIPTION"
  global                               = true
  create_log_analytics_workspace       = true
  region                               = "Australia East"
  included_subscriptions               = ["/subscriptions/subscription-1", "/subscriptions/subscription-2"]
  key_vault_enable_rbac_authorization  = true
  key_vault_enable_purge_protection    = true
}

