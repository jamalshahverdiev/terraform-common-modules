variable "account_id" {
  description = "AWS account ID"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "env" {
  description = "Environment"
  type        = string
}

variable "infra_path" {
  description = "Infrastructure path"
  type        = string
}

variable "secret" {
  description = "Secret name"
  type        = string
  default     = "secret"
}

variable "services_secret_path" {
  description = "Services secret path"
  type        = string
  default     = "services"
}

variable "ad_path" {
  description = "Active Directory path"
  type        = string
  default     = "ad"
}

variable "pg_path" {
  description = "PostgreSQL path"
  type        = string
  default     = "postgresql"
}

variable "mongo_path" {
  description = "MongoDB path"
  type        = string
  default     = "mongodb"
}

variable "keycloak_path" {
  description = "Keycloak path"
  type        = string
  default     = "keycloak"
}

variable "path" {
  description = "Path"
  type        = string
  default     = "iac"
}

variable "team" {
  description = "Team name"
  type        = string
}

variable "service_name" {
  description = "Service name"
  type        = string
}

variable "scope" {
  description = "Scope of the AD group"
  type        = string
}

variable "category" {
  description = "Category of the AD group"
  type        = string
}

variable "ad_ou_dn" {
  description = "Distinguished name of the AD organizational unit"
  type        = string
}

variable "callback_url" {
  description = "Callback URL for Keycloak"
  type        = string
}

variable "vault_mount_path" {
  description = "Vault mount path"
  type        = string
}

locals {
  postgresql_path = "${var.account_id}/${var.region}/${var.env}/${var.path}/${var.services_secret_path}/${var.team}/${var.service_name}/${var.pg_path}"
  mongodb_path    = "${var.account_id}/${var.region}/${var.env}/${var.path}/${var.services_secret_path}/${var.team}/${var.service_name}/${var.mongo_path}"
  keycloak_path   = "${var.account_id}/${var.region}/${var.env}/${var.path}/${var.services_secret_path}/${var.team}/${var.service_name}/${var.keycloak_path}"
}

variable "services" {
  description = "Services configuration"
  type        = any
  default    = {
    postgresql = {
      path     = local.postgresql_path
      username = module.postgresql.role_name
      password = module.postgresql.password
      database = module.postgresql.db_name
      host     = data.vault_kv_secret_v2.pg_credentials.data["pg_host"]
      port     = data.vault_kv_secret_v2.pg_credentials.data["pg_port"]
      data = {
        "pg_db_user" = module.postgresql.role_name
        "pg_db_pass" = module.postgresql.password
        "pg_db"      = module.postgresql.db_name
        "pg_host"    = data.vault_kv_secret_v2.pg_credentials.data["pg_host"]
        "pg_port"    = data.vault_kv_secret_v2.pg_credentials.data["pg_port"]
      }
    }
    mongodb = {
      path     = local.mongodb_path
      username = module.mongodb.mongo_username
      password = module.mongodb.mongo_password
      database = module.mongodb.mongo_auth_db
      host     = data.vault_kv_secret_v2.mongo_credentials.data["mongo_host"]
      port     = data.vault_kv_secret_v2.mongo_credentials.data["mongo_port"]
      data = {
        "mongo_db_user" = module.mongodb.mongo_username
        "mongo_db_pass" = module.mongodb.mongo_password
        "mongo_db"      = module.mongodb.mongo_auth_db
        "mongo_host"    = data.vault_kv_secret_v2.mongo_credentials.data["mongo_host"]
        "mongo_port"    = data.vault_kv_secret_v2.mongo_credentials.data["mongo_port"]
      }
    }
    keycloak = {
      path          = local.keycloak_path
      client_id     = module.keycloak.client_id
      client_secret = module.keycloak.client_secret
      data = {
        "client_id"     = module.keycloak.client_id
        "client_secret" = module.keycloak.client_secret
      }
    }
  }
}

variable "realm_id" {
  description = "Keycloak realm ID"
  type        = string
  default     = "services"
}

variable "login_theme" {
  description = "Keycloak login theme"
  type        = string
  default = "keycloak"
}

variable "extra_config" {
  description = "Extra configuration for Keycloak"
  type        = map(string)
  default     = {
    "key1" = "value1"
    "key2" = "value2"
  }
}

variable "postgres_enabled" {
  description = "Enable PostgreSQL module"
  type        = bool
  default     = false
}

variable "mongodb_enabled" {
  description = "Enable MongoDB module"
  type        = bool
  default     = false
}

variable "keycloak_enabled" {
  description = "Enable Keycloak module"
  type        = bool
  default     = false
}

