variable "realm_id" {
  description = "ID of the Keycloak realm"
  type        = string
}

variable "client_id" {
  description = "ID of the OpenID client"
  type        = string
}

variable "client_name" {
  description = "Name of the OpenID client"
  type        = string
}

variable "callback_url" {
  description = "Callback URL for the client"
  type        = string
}

variable "login_theme" {
  description = "Theme for the login page"
  type        = string
}

variable "extra_config" {
  description = "Additional configuration for the OpenID client"
  type        = map(string)
  default     = {}
}

variable "vault_mount_path" {
  description = "Vault mount path"
  type        = string
}

variable "vault_keycloak_key_path" {
  description = "Path to the Vault key"
  type        = string
}