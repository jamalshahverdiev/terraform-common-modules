output "settings" {
  description = "settings was used"
  value = {
    name   = local.service_name
    env    = local.env
    team   = local.team
    region = local.region
  }
}