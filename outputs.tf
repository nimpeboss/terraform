output "container_id" {
  description = "The ID of the Docker container"
  value = module.nginx_container.container_id
}

output "container_name" {
  description = "The name of the Docker container"
  value = module.nginx_container.container_name
}

output "container_url" {
  description = "URL to access the container"
  value = module.nginx_container.container_url
}