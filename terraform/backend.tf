terraform {
  backend "gcs" {
    bucket = "tf-state-gke-test"
    prefix = "terraform/dotnet6-crud-api/state"
  }
}
