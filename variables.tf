variable "container_name" {
  type = string
  description = "Name of Docker Container"
  default = "terraform-nginx"
}

variable "external_port" {
  type = number
  description = "Port exposed on localhost"
  default = 8080
}