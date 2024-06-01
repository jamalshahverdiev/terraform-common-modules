resource "vault_kv_secret_v2" "service_credentials" {
  for_each            = var.services
  mount               = var.vault_mount_path
  name                = each.value.path
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(each.value.data)
}