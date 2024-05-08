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
  description = "Path to cloud build file"
  default     = "cloud-build/cloudbuild-pull-request.yaml"
}

variable "push_cloud_build_file" {
  type        = string
  description = "Path to cloud build file"
  default     = "cloud-build/cloudbuild-push.yaml"
}

variable "secret_name" {
  type        = string
  description = "Name of the secret to create"

}

variable "secrets_file_path" {
  type        = string
  description = "path to secrets file"

}

variable "gke_cluster_name" {
  type        = string
  description = "name of the gke cluster"
}

variable "k8_namespaces" {
  type = object({
    labels      = map(string)
    annotations = map(string)
  })
  default     = {}
  description = "Kubernetes namespace configuration"
}

variable "k8_workload_identities" {
  type = object({
    service_account_name = string
    namespace            = string
    roles                = list(string)
  })
  default     = {}
  description = "Kubernetes workload identity configuration"
}

variable "k8_deployment_yaml" {
  type        = string
  description = "file name for kubernetes deployment"
  default     = ""
}
