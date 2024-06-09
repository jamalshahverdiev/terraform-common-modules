# outputs.tf at the root level of terraform-common-modules repository

output "postgresql_db_name" {
  value = module.postgresql.db_name
}

output "postgresql_role_name" {
  value = module.postgresql.role_name
}

output "postgresql_password" {
  value = module.postgresql.password
}

output "mongo_username" {
  value = module.mongodb.mongo_username
}

output "mongo_password" {
  value = module.mongodb.mongo_password
}

output "mongo_auth_db" {
  value = module.mongodb.mongo_auth_db
}

output "keycloak_client_id" {
  value = module.keycloak.client_id
}

output "keycloak_client_secret" {
  value = module.keycloak.client_secret
}

output "ad_group_name" {
  value = module.ad.group_name
}