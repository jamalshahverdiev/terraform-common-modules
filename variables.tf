variable "env" {
  description = "Environment"
  type        = string
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

variable "services" {
  description = "Services configuration"
  type        = map(any)
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
