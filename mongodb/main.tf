resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "mongodb_db_user" "mongo_user" {
  auth_database = var.auth_database
  name          = var.user_name
  password      = random_password.password.result
  role {
    role = "readWrite"
    db   = var.auth_database
  }
}
