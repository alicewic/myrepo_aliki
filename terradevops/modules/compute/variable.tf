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

variable "count-ec2" {
    type = string
    default = 5
}