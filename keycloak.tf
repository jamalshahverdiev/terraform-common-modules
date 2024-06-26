module "keycloak" {
  source                  = "./keycloak"
  realm_id                = local.realm_id
  client_id               = "${local.team}-${local.service_name}-${local.env}"
  client_name             = "${local.team}-${local.service_name}-${local.env}"
  callback_url            = local.callback_url
  login_theme             = local.login_theme
  extra_config            = local.extra_config
  vault_mount_path        = local.vault_mount_path
  vault_keycloak_key_path = "${local.account_id}/${local.env}/${local.region}/${local.path}/${local.services_secret_path}/${local.team}/${local.service_name}/${local.keycloak_path}"
  count                   = local.keycloak_enabled ? 1 : 0
}
