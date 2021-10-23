terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.65.0"
    }
  }
}

provider "yandex" {
  token     = var.yandex-token
  cloud_id  = var.yandex-cloud-id
  folder_id = var.yandex-folder-id
  zone      = var.yandex-zone
}

resource "yandex_compute_instance" "build" {
  network_interface {
    subnet_id = "e9bdd04rmjgc6njf487l"
  }
  resources {
    cores = 2
    memory = 2
  }
  boot_disk {
    initialize_params {
      name = "newDisk"
      size = 10
      type = "HDD"
      image_id = "fd814k6nlgobk70klpjn"
    }
  }
}