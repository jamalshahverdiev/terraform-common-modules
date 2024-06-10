terraform {
  required_version = ">= 1.0.0"
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~> 1.22.0"
    }
    mongodb = {
      source  = "Kaginari/mongodb"
      version = "0.1.7"
    }
    keycloak = {
      source  = "mrparkers/keycloak"
      version = "4.4.0"
    }
  }
}
