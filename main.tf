provider "google" {
  project     = "fast-blueprint-339802"
  region      = "us-west1"
}

resource "google_storage_bucket" "static-site" {
  name          = "adi_first_bucket"
  location      = "us-west1"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}