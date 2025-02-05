terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.19.0"
    }
  }
}

provider "google" {
  # Configuration options
}

module "my_vm" {
  source        = "./vm-instance" # Path to your instance.tf module
  project_id   = "hrushikesh-patil-449008"
  zone         = "us-central1-a" # e.g., us-central1-a
instance_name = "my-first-vm-instance"
  machine_type = "e2-medium"  # Or your preferred machine type
  os_image     = "debian-cloud/debian-11" # Or your preferred OS image
  subnetwork   = "projects/hrushikesh-patil-449008/regions/us-central1/subnetworks/default"  # Replace with your subnetwork
}
