terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.25.0"
    }
    sops = {
      source  = "carlpett/sops"
      version = "1.0.0"
    }
  }
  required_version = ">= 0.13"
}
