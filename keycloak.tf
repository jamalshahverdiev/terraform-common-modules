module "keycloak" {
  source       = "../../common-modules/keycloak"
  realm_id     = "services"
  client_id    = "${local.team}-${local.service_name}"
  client_name  = "${local.team}-${local.service_name}"
  callback_url = local.callback_url
  login_theme  = "keycloak"
  extra_config = {
    "key1" = "value1"
    "key2" = "value2"
  }
}