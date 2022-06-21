variable "aws_region" {
    type = string
    default = "us-east-1"
}

variable "ami" {
    type = string
    default = "ami-0cff7528ff583bf9a"
}

variable "tags" {
    type = map
    default = {
        Name = "aliki_review"
        Env = "Production"
        Owner = "Aliki"
    }
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "s3_bucket" {
    type = string
    default = "my-tf-review-bucket"
}

variable "user_name" {
    type = string
    default = "aliki_review"
}