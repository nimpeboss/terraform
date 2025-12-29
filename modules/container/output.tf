output "container_id" {
  value = docker_container.nginx.id
}

output "container_name" {
  value = docker_container.nginx.name
}

output "host_port" {
  value       = docker_container.nginx.ports[0].external
  description = "Host port mapped to container port 80"
}

output "container_url" {
  value       = "http://localhost:${docker_container.nginx.ports[0].external}"
  description = "URL to reach the container from the host"
}

output "ports" {
  value = docker_container.nginx.ports
  description = "List of port mappings"
}