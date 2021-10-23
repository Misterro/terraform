terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }
  }
}

provider "yandex" {
  token     = file("yandex_token")
  cloud_id  = "b1g7q7tems6tss4edocn"
  folder_id = "b1g2q57553gluktr658l"
  zone      = "ru-central1-a"
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

  }
}