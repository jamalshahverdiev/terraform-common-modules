module "ad" {
  source   = "./active-directory"
  team     = "${local.team}-${local.service_name}"
  scope    = local.scope
  category = local.category
  ad_ou_dn = local.ad_ou_dn
}