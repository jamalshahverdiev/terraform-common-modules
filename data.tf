# data "vault_kv_secret_v2" "pg_credentials" {
#   mount = "kvv2"
#   name  = "${var.account_id}/${var.region}/${var.env}/${var.infra_path}/${var.pg_path}/${var.secret}"
# }

# data "vault_kv_secret_v2" "mongo_credentials" {
#   mount = "kvv2"
#   name  = "${var.account_id}/${var.region}/${var.env}/${var.infra_path}/${var.mongo_path}/${var.secret}"
# }

# data "vault_kv_secret_v2" "keycloak_credentials" {
#   mount = "kvv2"
#   name  = "${var.account_id}/${var.region}/${var.env}/${var.infra_path}/${var.keycloak_path}/${var.secret}"
# }

# data "vault_kv_secret_v2" "ad_credentials" {
#   mount = "kvv2"
#   name  = "${var.account_id}/${var.region}/${var.env}/${var.infra_path}/${var.ad_path}/${var.secret}"
# }