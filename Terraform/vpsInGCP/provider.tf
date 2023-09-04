provider "google" {
  project     = "projectname-397413"
  credentials = "${file("projectname-397413-e56406224b55.json")}"
  region      = "us-central1"
  zone        = "us-central1-c"
}