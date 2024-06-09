module "postgresql" {
  source    = "./postgresql"
  db_name   = "${local.env}_${local.team}_${local.service_name}_db"
  role_name = "${local.env}_${local.team}_${local.service_name}_role"

  # Include only if postgres_enabled is true
  # count = var.postgres_enabled ? 1 : 0
}