resource "keycloak_openid_client" "openid_client" {
  realm_id    = var.realm_id
  client_id   = var.client_id
  name        = var.client_name
  enabled     = true
  access_type = "CONFIDENTIAL"
  valid_redirect_uris = [
    var.callback_url
  ]
  login_theme = var.login_theme
  extra_config = var.extra_config
  standard_flow_enabled = true
}
