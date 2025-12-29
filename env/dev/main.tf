terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {

}

module "nginx_container" {
  source         = "../../modules/container"
  image          = "nginx:1.26.0"
  external_port  = 0
  container_name = "nginx-dev"
  enable_network = false
}
