provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "wicklife_vpc" {
    cidr_block = var.cidr_block
    tags = var.tags 
}

resource "aws_s3_bucket" "wicklife_bucket" {
    bucket = var.wicklife_bucket
    acl = "private"
    tags = var.tags
}

resource "aws_instance" "wicklife_instance" {
    ami = var.wicklife_instance_ami
    instance_type = var.wicklife_type
    tags = var.tags
}

resource "aws_db_instance" "myRDS" {
  name                = var.wicklife_database
  identifier          = var.identifier
  instance_class      = var.instance_class
  engine              = var.database_engine
  engine_version      = var.database_engine_version
  username            = var.database_user
  password            = var.database_password
  port                = var.database_port
  allocated_storage   = 20
  skip_final_snapshot = true
}