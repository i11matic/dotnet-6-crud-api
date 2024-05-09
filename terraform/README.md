## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.25.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.7.0 |
| <a name="requirement_sops"></a> [sops](#requirement\_sops) | 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.28.0 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.29.0 |
| <a name="provider_sops"></a> [sops](#provider\_sops) | 1.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_k8-workload-identity"></a> [k8-workload-identity](#module\_k8-workload-identity) | terraform-google-modules/kubernetes-engine/google//modules/workload-identity | n/a |

## Resources

| Name | Type |
|------|------|
| [google_cloudbuild_trigger.gh-trigger-pull-request](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudbuild_trigger) | resource |
| [google_cloudbuild_trigger.gh-trigger-push](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudbuild_trigger) | resource |
| [google_cloudbuildv2_repository.repository](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudbuildv2_repository) | resource |
| [google_secret_manager_secret.secret](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret) | resource |
| [google_secret_manager_secret_iam_policy.policy](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_iam_policy) | resource |
| [google_secret_manager_secret_version.secret_version](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |
| [kubectl_manifest.manifest](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubernetes_namespace.namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [google_client_config.provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_config) | data source |
| [google_container_cluster.cluster](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/container_cluster) | data source |
| [google_iam_policy.acessor](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_policy) | data source |
| [kubectl_file_documents.docs](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/data-sources/file_documents) | data source |
| [sops_file.secret](https://registry.terraform.io/providers/carlpett/sops/1.0.0/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branch_name"></a> [branch\_name](#input\_branch\_name) | Branch name | `string` | `"^main$"` | no |
| <a name="input_connection_name"></a> [connection\_name](#input\_connection\_name) | Name of the connector | `string` | n/a | yes |
| <a name="input_gke_cluster_name"></a> [gke\_cluster\_name](#input\_gke\_cluster\_name) | name of the gke cluster | `string` | n/a | yes |
| <a name="input_k8_deployment_yaml"></a> [k8\_deployment\_yaml](#input\_k8\_deployment\_yaml) | file name for kubernetes deployment | `string` | `""` | no |
| <a name="input_k8_namespace"></a> [k8\_namespace](#input\_k8\_namespace) | Kubernetes namespace configuration | <pre>object({<br>    name        = string<br>    labels      = map(string)<br>    annotations = map(string)<br>  })</pre> | n/a | yes |
| <a name="input_k8_workload_identity"></a> [k8\_workload\_identity](#input\_k8\_workload\_identity) | Kubernetes workload identity configuration | <pre>object({<br>    service_account_name = string<br>    namespace            = string<br>    roles                = list(string)<br>  })</pre> | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID to host the cluster in | `string` | n/a | yes |
| <a name="input_pull_request_cloud_build_file"></a> [pull\_request\_cloud\_build\_file](#input\_pull\_request\_cloud\_build\_file) | Path to cloud build file | `string` | `"cloud-build/cloudbuild-pull-request.yaml"` | no |
| <a name="input_push_cloud_build_file"></a> [push\_cloud\_build\_file](#input\_push\_cloud\_build\_file) | Path to cloud build file | `string` | `"cloud-build/cloudbuild-push.yaml"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region to host the cluster in | `string` | n/a | yes |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Name of the repo | `string` | n/a | yes |
| <a name="input_repo_url"></a> [repo\_url](#input\_repo\_url) | url of the repository | `string` | n/a | yes |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | Name of the secret to create | `string` | n/a | yes |
| <a name="input_secrets_file_path"></a> [secrets\_file\_path](#input\_secrets\_file\_path) | path to secrets file | `string` | n/a | yes |

## Outputs

No outputs.
