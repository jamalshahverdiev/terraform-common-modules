resource "ad_group" "group" {
  name             = var.team
  sam_account_name = var.team
  scope            = var.scope
  category         = var.category
  container        = var.ad_ou_dn
}