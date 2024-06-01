output "vault_paths" {
  value = {
    for service_key, service_data in vault_kv_secret_v2.service_credentials :
    service_key => service_data.name
  }
  description = "A mapping of all service paths in Vault"
  sensitive   = true
}
