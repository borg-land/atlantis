resource "google_storage_bucket" "static-site" {
  name          = "demo-atlantis"
  location      = "EU"
  force_destroy = true
}