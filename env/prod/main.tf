terraform {
  required_providers {
    docker = {
        source = "kreuzwerker/docker"
        version = "~> 3.0"
    }
  }
}

provider "docker" {}

module "nginx_container" {
  source = "../../modules/container"
  container_name = "nginx-prod"
  external_port = 8082
}

output "container_url" {
  value = module.nginx_container.container_url
}