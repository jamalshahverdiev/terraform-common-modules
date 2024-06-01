module "mongodb" {
  source        = "../../common-modules/mongodb"
  auth_database = "${local.env}_${local.team}_${local.service_name}_db"
  user_name     = "${local.env}_${local.team}_${local.service_name}_user"
}