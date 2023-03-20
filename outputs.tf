output "wp_lb_ip" {
   value = digitalocean_loadbalancer.wp_lb.ip
   description = "Ip Load Balancer"
}

output "wp_vm_ips" {
  value = digitalocean_droplet.vm_wp[*].ipv4_address
  description = "IPs das VMs WordPress"
}

output "nfs_vm_ips" {
  value = digitalocean_droplet.vm_nfs.ipv4_address
  description = "IPs da Vm NFS"
}

output "wp_db_user" {
  value = digitalocean_database_user.wp_database_user.name
  description = "Usuario do Banco de Dados"
}

output "wp_db_pwd" {
  value = digitalocean_database_user.wp_database_user.password
  description = "Senha do Banco de Dados"
  sensitive = true
}