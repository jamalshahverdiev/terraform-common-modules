variable "db_name" {
  description = "Name of the PostgreSQL database"
  type        = string
}

variable "role_name" {
  description = "Name of the PostgreSQL role"
  type        = string
}

variable "vault_mount_path" {
  description = "Vault mount path"
  type        = string
}

variable "vault_postgresql_key_path" {
  description = "Path to the Vault key"
  type        = string
}

variable "vault_postgresql_data_path" {
  description = "Path to the Vault data"
  type        = string
}
