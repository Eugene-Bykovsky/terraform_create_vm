resource "yandex_compute_instance" "node" {
  name = "ebykovskii_terraform_test"

  resources {
    core_fraction = 50
    cores         = 2
    gpus          = 0
    memory        = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8qh3qqmbq35jn5920n"
      size     = 20
      type     = "network-hdd"
    }
  }

  network_interface {
    nat       = true
    subnet_id = var.subnet_id
  }

  scheduling_policy {
    preemptible = true # Делаем машину прерываемой
  }

  platform_id = "standard-v2"

  allow_stopping_for_update = true # Разрешаем остановку для обновления
}
