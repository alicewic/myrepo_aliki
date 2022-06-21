variable "region"{
    type = string
    default = "us-east-1"
}

variable "wicklife_vcp"{
    type = string
    default = "10.0.0.0/16"
}

variable "cidr_block" {
    type = string
    default = "10.0.1.0/24"
}

variable "ami" {
    type = string
    default = "ami-0742b4e673072066f"
}

variable "type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        "Name" = "WebServer"
        "Env" = "Dev"
        }
}

variable "bucketlist" {
    type = list(string)
    default = ["aliki-100-buc" , "aliki-200-buc" , "aliki-300-buc"]

}

variable "sshport" {
  type    = number
  default = 22
}

variable "inputname" {
  type        = string
  description = "DEV-VPC"
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

variable "count-ec2" {
    type = string
    default = 5
}