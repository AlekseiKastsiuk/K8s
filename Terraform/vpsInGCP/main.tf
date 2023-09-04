#create vm: CPU 1-2; RAM 4 10 GB balanced persistent disk


resource "google_compute_instance" "my_vm" {
  count        = 3
  name         = "node-${count.index}"
  machine_type = "e2-medium"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      
    }
  }

  metadata = {
    ssh-keys = "aleksei_kastsiuk:${file(var.sshkey)}"
    sudo-users = var.sudoName 
  }

}
