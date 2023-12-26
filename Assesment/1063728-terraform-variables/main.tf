# declare the variable “dns_resolver” with type “set” of “strings” and default value “8.8.8.8” and “8.8.4.4”.
variable "dns_resolver" {
  type    = set(string)
  default = ["8.8.8.8", "8.8.4.4"]
}

# declare the variable “port” with type “integer” and default value 53.
variable "port" {
  type    = number
  default = 53
}

# declare the variable “token” with type “string” and an empty default value.
variable "token" {
  type    = string
  default = ""
}

# declare the variable “use_cache” and type “bool” and the default value true.
variable "use_cache" {
  type    = bool
  default = true
}

# output the values of the “dns_resolver” “port” “token” and “use_cash” variables using output block. The output of the “token” variable must be declared as sensitive.
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