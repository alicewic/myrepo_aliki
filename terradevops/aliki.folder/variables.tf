variable "wicklife_vcp"{
    type = string
    default = "10.0.0.0/16"
}

variable "cidr_block" {
    type = string
    default = "10.0.1.0/24"
}

variable "wicklife_bucket" {
    type = string
    default = "awkf-bucket-name"
}

variable "wicklife_instance_ami" {
    type = string
    default = "ami-0742b4e673072066f"
}

variable "wicklife_type" {
    type = string
    default = "t2.micro"
}

variable  "tags" {
    type = map
    default = {
        Name = "Wicklife"
        Env = "DevOps"
    }
}

variable "wicklife_database" {
  type        = string
  description = "Wicklife"
}

variable "database_user" {
    type = string
    default = "alikiwkf"
}

variable "database_password" {
  type        = string
  default     = "project123"
}

variable "database_port" {
    type = number
    default = 3306
}

variable "database_engine_version" {
    type = string
    default = "10.2.21"
}

variable "database_engine" {
    type = string
    default = "mariaDB"
}

variable "instance_class" {
    type = string
    default = "db.t2.micro"
}

variable "identifier" {
    type = string
    default = "my-wicklife"
}