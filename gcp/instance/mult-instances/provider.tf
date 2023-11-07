terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.4.0"
    }
  }
}

provider "google" {
  credentials = file("../keys/key.json")
  project = var.gcp_project
  region  = var.gcp_region
  zone    = var.gcp_zone
}