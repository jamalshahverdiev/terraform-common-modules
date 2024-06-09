variable "auth_database" {
  description = "MongoDB authentication database"
  type        = string
}

variable "user_name" {
  description = "Name of the MongoDB user"
  type        = string
}

variable "vault_mount_path" {
  description = "Vault mount path"
  type        = string
}

variable "vault_mongodb_key_path" {
  description = "Path to the Vault key"
  type        = string
}

variable "vault_mongodb_data_path" {
  description = "Path to the Vault data"
  type        = string
}