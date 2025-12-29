variable "image" {
  type        = string
  description = "Docker image to run (pin a version for reproducibility)"
  default     = "nginx:1.26.0"
}

variable "container_name" {
  type        = string
  description = "Name of the Docker container"
  default     = "nginx-dev"
}

variable "external_port" {
  type        = number
  description = "Port exposed on localhost. Set to 0 to let Docker assign a random host port."
  default     = 0

  validation {
    condition     = var.external_port >= 0 && var.external_port <= 65535
    error_message = "external_port must be between 0 and 65535 (use 0 for a random host port)."
  }
}

variable "restart_policy" {
  type        = string
  description = "Docker restart policy (no, on-failure, always, unless-stopped)"
  default     = "always"
  validation {
    condition     = contains(["no", "on-failure", "always", "unless-stopped"], var.restart_policy)
    error_message = "restart_policy must be one of: no, on-failure, always, unless-stopped"
  }
}

variable "enable_network" {
  type = bool
  description = "Create and attach the container to a dedicated docker network"
  default = false
}