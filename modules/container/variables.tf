variable "container_name" {
  type = string
  description = "Name of the Docker container"
}

variable "external_port" {
  type = number
  description = "Port exposed on localhost"
}