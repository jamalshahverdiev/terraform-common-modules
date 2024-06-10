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

variable "ad_path" {
  type        = string
  description = "value of the ad path"
  default     = "ad"
}

variable "services_secret_path" {
  description = "Services secret path"
  type        = string
  default     = "services"
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

variable "vault_url" {
  description = "Vault URL"
  type        = string
  default     = "http://10.100.100.100:8200"
}

variable "vault_mount_path" {
  description = "Vault mount path"
  type        = string
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

variable "SERVICES_TOKEN" {
  type = string
  description = "value of the services token"
  sensitive = true
}