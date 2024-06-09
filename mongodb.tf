module "mongodb" {
  source        = "./mongodb"
  auth_database = "${local.env}_${local.team}_${local.service_name}_db"
  user_name     = "${local.env}_${local.team}_${local.service_name}_user"

  vault_mongodb_key_path  = "${local.account_id}/${local.region}/${local.env}/${local.path}/${local.services_secret_path}/${local.team}/${local.service_name}/${local.mongo_path}"
  vault_mongodb_data_path = "${local.account_id}/${local.region}/${local.env}/${local.infra_path}/${local.mongo_path}/${local.secret}"
  vault_mount_path           = local.vault_mount_path

  # Include only if mongodb_enabled is true
  # count = var.mongodb_enabled ? 1 : 0
}