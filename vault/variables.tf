variable "vault_mount_path" {
  description = "The mount path of the Vault KV engine"
  type        = string
}

variable "services" {
  description = "A map containing the data for different services"
  type = map(object({
    path = string
    data = map(string)
  }))
}
