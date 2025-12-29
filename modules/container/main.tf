resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false
}

resource "docker_network" "module_network" {
  count = var.enable_network ? 1 : 0
  name = "${var.container_name}-net"
}

resource "docker_container" "nginx" {
  name = var.container_name
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.external_port
  }

  dynamic "networks_advanced" {
    for_each = var.enable_network ? [docker_network.module_network[0].name] : []
    content {
      name = each.value
    }
  }

  healthcheck {
    test = ["CMD-SHELL", "curl -f http://localhost:80 || exit 1"]
    interval = "10s"
    timeout = "2s"
    retries = 3
  }
}