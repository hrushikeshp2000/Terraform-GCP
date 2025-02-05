resource "google_compute_instance" "default" {
 project      = var.project_id
  zone         = var.zone
  name         = var.instance_name
 machine_type = var.machine_type
  boot_disk {
    initialize_params {
      image = var.os_image
    }
  }
 network_interface {
    subnetwork = var.subnetwork
    access_config {}
  }

}


variable "project_id" {
  type = string
 description = "The project ID to create the VM in."
}

variable "zone" {
 type = string
  description = "The zone to create the VM in."
}

variable "instance_name" {
  type = string
 description = "The name of the VM instance."
}


variable "machine_type" {
 type = string
  description = "The machine type of the VM."
 default     = "e2-medium"
}

variable "os_image" {
 type = string
  description = "The OS image to use for the VM."
 default = "debian-cloud/debian-11" # Example: Debian 11
}

variable "subnetwork" {
  type = string
 description = "The subnetwork to attach the VM to."
}

