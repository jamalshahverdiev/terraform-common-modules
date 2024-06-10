locals {
  team                 = var.team
  service_name         = var.service_name
  scope                = var.scope
  category             = var.category
  ad_ou_dn             = var.ad_ou_dn
  ad_path              = var.ad_path
  callback_url         = var.callback_url
  realm_id             = var.realm_id
  login_theme          = var.login_theme
  secret               = var.secret
  extra_config         = var.extra_config
  env                  = var.env
  account_id           = var.account_id
  region               = var.region
  infra_path           = var.infra_path
  path                 = var.path
  services_secret_path = var.services_secret_path
  vault_mount_path     = var.vault_mount_path
  vault_url            = var.vault_url
  keycloak_path        = var.keycloak_path
  keycloak_enabled     = var.keycloak_enabled
  pg_path              = var.pg_path
  postgres_enabled     = var.postgres_enabled
  mongo_path           = var.mongo_path
  mongodb_enabled      = var.mongodb_enabled
  SERVICES_TOKEN       = var.SERVICES_TOKEN
}
