variable "project_id" {
  type        = string
  description = "The project ID to host the cluster in"
}

variable "region" {
  type        = string
  description = "The region to host the cluster in"
}

variable "repo_name" {
  type        = string
  description = "Name of the repo"
}

variable "connection_name" {
  type        = string
  description = "Name of the connector"
}

variable "repo_url" {
  type        = string
  description = "url of the repository"
}

variable "branch_name" {
  type        = string
  description = "Branch name"
  default     = "^main$"
}

variable "pull_request_cloud_build_file" {
  type        = string
  description = "path to cloud build file"
  default     = "cloud-build/cloudbuild-pull-request.yaml"
}

variable "push_cloud_build_file" {
  type        = string
  description = "path to cloud build file"
  default     = "cloud-build/cloudbuild-push.yaml"
}

variable "secret_name" {

}

variable "secrets_file_path" {

}
