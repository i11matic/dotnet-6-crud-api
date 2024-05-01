resource "google_cloudbuildv2_repository" "repository" {
  project           = var.project_id
  location          = var.region
  name              = var.repo_name
  parent_connection = var.connection_name
  remote_uri        = var.repo_url
}


resource "google_cloudbuild_trigger" "gh-trigger-push" {
  name     = "${var.repo_name}-push"
  location = var.region
  project  = var.project_id

  repository_event_config {
    repository = google_cloudbuildv2_repository.repository.id
    push {
      branch = var.branch_name
    }
  }
  include_build_logs = "INCLUDE_BUILD_LOGS_WITH_STATUS"
  filename           = var.push_cloud_build_file
}

resource "google_cloudbuild_trigger" "gh-trigger-pull-request" {
  name     = "${var.repo_name}-pull-request"
  location = var.region
  project  = var.project_id

  repository_event_config {
    repository = google_cloudbuildv2_repository.repository.id
    pull_request {
      branch = var.branch_name
    }
  }
  include_build_logs = "INCLUDE_BUILD_LOGS_WITH_STATUS"
  filename           = var.pull_request_cloud_build_file
}
