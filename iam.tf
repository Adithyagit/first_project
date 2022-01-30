data "google_iam_policy" "admin" {
  binding {
    role = "roles/storage.admin"
    members = [
      "user:adithyak2021@gmail.com",
    ]
  }
}

resource "google_storage_bucket_iam_policy" "iam_policy_for_bucket" {
  bucket = "adi_first_bucket"
  policy_data = data.google_iam_policy.admin.policy_data
}