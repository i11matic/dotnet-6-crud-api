project_id = "gke-test-420601"

region = "us-west1"

connection_name = "github-connector"

repo_url = "https://github.com/i11matic/dotnet-6-crud-api.git"

repo_name = "dotnet-6-crud-api"

secret_name = "dotnetAppConfig"

secrets_file_path = "./files/appsettings.json"

gke_cluster_name = "gke-test"

k8_namespace = {
  name = "foobar"
  labels = {
    test = "bar"
  }
  annotations = {
    name = "value"
  }
}

k8_workload_identity = {
  service_account_name = "app-test"
  namespace            = "foobar"
  roles                = ["roles/cloudsql.client", "roles/iam.serviceAccountTokenCreator"]
}

k8_deployment_yaml = "./files/deployment.yaml"
