data "google_client_config" "provider" {}

data "google_container_cluster" "cluster" {
  project  = var.project_id
  name     = var.gke_cluster_name
  location = var.region
}

provider "kubernetes" {
  host  = "https://${data.google_container_cluster.cluster.endpoint}"
  token = data.google_client_config.provider.access_token
  cluster_ca_certificate = base64decode(
    data.google_container_cluster.cluster.master_auth[0].cluster_ca_certificate
  )
}

resource "kubernetes_namespace" "namespace" {
  metadata {
    annotations = var.k8_namespace.annotations
    labels      = var.k8_namespace.labels
    name        = var.k8_namespace.name
  }
}

module "k8-workload-identity" {
  source       = "terraform-google-modules/kubernetes-engine/google//modules/workload-identity"
  cluster_name = var.gke_cluster_name
  location     = var.region
  name         = var.k8_workload_identity.service_account_name
  namespace    = var.k8_namespace.name
  project_id   = var.project_id
  roles        = var.k8_workload_identity.roles
  depends_on   = [kubernetes_namespace.namespace]
}

data "kubectl_file_documents" "docs" {
  content = file(var.k8_deployment_yaml)
}

resource "kubectl_manifest" "manifest" {
  for_each   = data.kubectl_file_documents.docs.manifests
  yaml_body  = each.value
  depends_on = [module.k8-workload-identity, google_secret_manager_secret.secret]
}
