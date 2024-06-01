output "db_name" {
  value = postgresql_database.db.name
}

output "role_name" {
  value = postgresql_role.role.name
}

output "password" {
  value = random_password.password.result
}
