resource "google_storage_bucket" "static-site" {
  name          = "demo-atlantis-2"
  location      = "EU"
  force_destroy = true
}
