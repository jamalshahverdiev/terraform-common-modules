module "mongodb" {
  source        = "./mongodb"
  auth_database = "${local.env}_${local.team}_${local.service_name}_db"
  user_name     = "${local.env}_${local.team}_${local.service_name}_user"

  # Include only if mongodb_enabled is true
  # count = var.mongodb_enabled ? 1 : 0
}