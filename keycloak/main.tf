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

# Include Vault KV resource to store credentials
resource "vault_kv_secret_v2" "keycloak_credentials" {
  mount     = var.vault_mount_path
  name      = var.vault_keycloak_key_path
  data_json = jsonencode({
    client_id     = keycloak_openid_client.openid_client.client_id
    client_secret = keycloak_openid_client.openid_client.client_secret
  })
}