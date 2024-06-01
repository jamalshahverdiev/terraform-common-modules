module "vault" {
  source = "../../common-modules/vault"

  vault_mount_path = local.vault_mount_path
  services         = local.services

  depends_on = [
    module.postgresql,
    module.mongodb,
    module.keycloak
  ]
}