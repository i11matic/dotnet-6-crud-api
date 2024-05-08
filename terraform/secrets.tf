data "sops_file" "secret" {
  source_file = var.secrets_file_path
}


resource "google_secret_manager_secret" "secret" {
  project   = var.project_id
  secret_id = var.secret_name
  replication {
    user_managed {
      replicas {
        location = var.region
      }
    }
  }
}

resource "google_secret_manager_secret_version" "secret_version" {
  secret      = google_secret_manager_secret.secret.id
  secret_data = data.sops_file.secret.raw
}


data "google_iam_policy" "acessor" {
  binding {
    role = "roles/secretmanager.secretAccessor"
    members = [
      "serviceAccount:${module.k8-workload-identity.k8-workload-identity.gcp_service_account_email}"
    ]
  }
}


resource "google_secret_manager_secret_iam_policy" "policy" {
  project     = google_secret_manager_secret.secret.project
  secret_id   = google_secret_manager_secret.secret.secret_id
  policy_data = data.google_iam_policy.acessor.policy_data
}
