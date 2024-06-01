module "keycloak" {
  source       = "./keycloak"
  realm_id     = local.realm_id
  client_id    = "${local.team}-${local.service_name}"
  client_name  = "${local.team}-${local.service_name}"
  callback_url = local.callback_url
  login_theme  = local.login_theme
  extra_config = local.extra_config
}