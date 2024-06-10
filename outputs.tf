# outputs.tf at the root level of terraform-common-modules repository

output "postgresql_db_name" {
  value = local.postgres_enabled ? module.postgresql[0].db_name : null
}

output "postgresql_role_name" {
  value = local.postgres_enabled ? module.postgresql[0].role_name : null
}

output "postgresql_password" {
  value = local.postgres_enabled ? module.postgresql[0].password : null
}

output "mongo_username" {
  value = local.mongodb_enabled ? module.mongodb[0].mongo_username : null
}

output "mongo_password" {
  value = local.mongodb_enabled ? module.mongodb[0].mongo_password : null
}

output "mongo_auth_db" {
  value = local.mongodb_enabled ? module.mongodb[0].mongo_auth_db : null
}

output "keycloak_client_id" {
  value = local.keycloak_enabled ? module.keycloak[0].client_id : null
}

output "keycloak_client_secret" {
  value = local.keycloak_enabled ? module.keycloak[0].client_secret : null
}

output "ad_group_name" {
  value = module.ad.group_name
}
