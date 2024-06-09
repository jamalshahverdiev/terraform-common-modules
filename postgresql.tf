module "postgresql" {
  source                     = "./postgresql"
  db_name                    = "${local.env}_${local.team}_${local.service_name}_db"
  role_name                  = "${local.env}_${local.team}_${local.service_name}_role"
  vault_postgresql_key_path  = "${local.account_id}/${local.region}/${local.env}/${local.path}/${local.services_secret_path}/${local.team}/${local.service_name}/${local.pg_path}"
  vault_postgresql_data_path = "${local.account_id}/${local.region}/${local.env}/${local.infra_path}/${local.pg_path}/${local.secret}"
  vault_mount_path           = local.vault_mount_path
  # Include only if postgres_enabled is true
  # count = var.postgres_enabled ? 1 : 0
}
