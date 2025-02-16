output "vm_ip" {
  value = yandex_compute_instance.node.network_interface.0.ip_address
}

output "vm_nat_ip" {
  value = yandex_compute_instance.node.network_interface.0.nat_ip_address
}
