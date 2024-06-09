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

data "vault_kv_secret_v2" "mongo_credentials" {
  mount = var.vault_mount_path
  name  = var.vault_mongodb_data_path
}

# Include Vault KV resource to store credentials
resource "vault_kv_secret_v2" "mongodb_credentials" {
  mount = var.vault_mount_path
  name  = var.vault_mongodb_key_path
  data_json = jsonencode({
    username      = mongodb_db_user.mongo_user.name
    password      = random_password.password.result
    auth_database = mongodb_db_user.mongo_user.auth_database
    "mongo_host"  = data.vault_kv_secret_v2.mongo_credentials.data["mongo_host"]
    "mongo_port"  = data.vault_kv_secret_v2.mongo_credentials.data["mongo_port"]
  })
}
