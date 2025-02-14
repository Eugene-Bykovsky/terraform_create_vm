resource "yandex_compute_instance" "virtual_machine" {
  for_each        = var.virtual_machines
  name            = each.value["vm_name"]

  resources {
    cores  = each.value["vm_cpu"]
    memory = each.value["ram"]
  }

  boot_disk {
    initialize_params {
      image_id = each.value["template"] # ID образа операционной системы
      size     = each.value["disk"]     # Размер диска в ГБ
    }
  }

  network_interface {
    nat = true
    subnet_id = var.subnet_id
  }

  scheduling_policy {
    preemptible = true # Делаем машину прерываемой
  }

}
