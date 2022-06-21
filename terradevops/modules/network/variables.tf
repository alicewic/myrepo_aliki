variable "sshport" {
  type    = number
  default = 22
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "tcp" {
    type = string
    default = "tcp"
}

variable "ssh"{
    type = string
    default = "ssh"
}

variable "httpsport" {
    type = number
    default = 443
}

