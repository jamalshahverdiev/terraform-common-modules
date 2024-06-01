variable "team" {
  description = "Name of the team or group"
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
