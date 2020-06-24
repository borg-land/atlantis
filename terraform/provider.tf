provider "google" {
  project = "borg-dummy-project"
  region  = "europe-west6"
  version = "3.24"
}

provider "google-beta" {
  project = "borg-dummy-project"
  region  = "europe-west6"
  version = "3.24"
}

data "google_client_config" "provider" {}


terraform {
  required_version = "0.12.24"
  backend "gcs" {
    bucket = "atl-state"
    prefix = "atlantis"
  }
}