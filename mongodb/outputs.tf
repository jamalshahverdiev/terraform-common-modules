output "mongo_username" {
  value = mongodb_db_user.mongo_user.name
}

output "mongo_password" {
  value = random_password.password.result
}

output "mongo_auth_db" {
  value = mongodb_db_user.mongo_user.auth_database
}
