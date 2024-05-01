<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.25.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.27.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloudbuild_trigger.gh-trigger-pull-request](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudbuild_trigger) | resource |
| [google_cloudbuild_trigger.gh-trigger-push](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudbuild_trigger) | resource |
| [google_cloudbuildv2_repository.repository](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudbuildv2_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branch_name"></a> [branch\_name](#input\_branch\_name) | Branch name | `string` | `"^main$"` | no |
| <a name="input_connection_name"></a> [connection\_name](#input\_connection\_name) | Name of the connector | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID to host the cluster in | `string` | n/a | yes |
| <a name="input_pull_request_cloud_build_file"></a> [pull\_request\_cloud\_build\_file](#input\_pull\_request\_cloud\_build\_file) | path to cloud build file | `string` | `"cloud-build/cloudbuild-pull-request.yaml"` | no |
| <a name="input_push_cloud_build_file"></a> [push\_cloud\_build\_file](#input\_push\_cloud\_build\_file) | path to cloud build file | `string` | `"cloud-build/cloudbuild-push.yaml"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region to host the cluster in | `string` | n/a | yes |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Name of the repo | `string` | n/a | yes |
| <a name="input_repo_url"></a> [repo\_url](#input\_repo\_url) | url of the repository | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->