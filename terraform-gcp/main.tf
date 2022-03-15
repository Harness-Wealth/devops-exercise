terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_firewall" "rules" {
  project = var.project
  name    = "terraform-firewall-rule"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "8080", "1000-2000"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}


resource "google_compute_instance" "vm_instance" {
    name            = "terraform-instance"
    machine_type    = "f1-micro"

    metadata = {
      ssh-keys = "${var.user}:${file("~/.ssh/id_rsa.pub")}"
    }

    # This metadata startup script not working for now.
    # metadata_startup_script = file("./start.sh")

    boot_disk {
        initialize_params {
            image = "cos-cloud/cos-stable"
        }
    }

    network_interface {
        network = google_compute_network.vpc_network.name
        access_config {
        }
    }

}