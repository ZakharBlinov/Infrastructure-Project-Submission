output "web_ips" {
  description = "Private IP addresses of web servers"
  value = [
    for i, box in vagrant_box.web : box.provider["virtualbox"].network_adapters[0].ip
  ]
}

output "web1_ip" {
  description = "IP of the first web server"
  value = vagrant_box.web[0].provider["virtualbox"].network_adapters[0].ip
}

output "web2_ip" {
  description = "IP of the second web server"
  value = vagrant_box.web[1].provider["virtualbox"].network_adapters[0].ip
}