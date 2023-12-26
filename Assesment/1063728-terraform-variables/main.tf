variable "dns_resolver" {
  type    = set(string)
  default = ["8.8.8.8", "8.8.4.4"]
}

variable "port" {
  type    = number
  default = 53
}

variable "token" {
  type    = string
  default = ""
}

variable "use_cache" {
  type    = bool
  default = true
}

output "dns_resolver_value" {
  value = var.dns_resolver
}

output "port_value" {
  value = var.port
}

output "token_value" {
  value     = var.token
  sensitive = true
}

output "use_cache_value" {
  value = var.use_cache
}