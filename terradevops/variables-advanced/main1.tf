provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "dev-vpc" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true

    tags = {
        Name = "wicklife-vpc"
        Env = "dev_vpc"
    }
}

resource "aws_instance" "dev-ec2" {
    ami = var.ami 
    instance_type = var.type
    count = 3
    tags = var.tags

    depends_on = [aws_vpc.dev-vpc]
}

resource "aws_s3_bucket" "dev-bucket01" {
    bucket = var.bucketlist[0]
    depends_on = [aws_vpc.dev-vpc]
}

resource "aws_s3_bucket" "dev-bucket02" {
    bucket = var.bucketlist[1]
    depends_on = [aws_vpc.dev-vpc]
}

resource "aws_s3_bucket" "dev-bucket03" {
    bucket = var.bucketlist[2]
    depends_on = [aws_vpc.dev-vpc]
}

resource "aws_security_group" "dev-secgrp" {
    name = "Allow dev HTTPS"

    ingress {
        from_port = var.httpsport
        to_port = var.httpsport
        protocol = var.tcp
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = var.httpsport
        to_port = var.httpsport
        protocol = var.tcp
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = var.httpsport
        to_port = var.httpsport
        protocol = var.tcp
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = var.httpsport
        to_port = var.httpsport
        protocol = var.tcp
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    depends_on = [aws_vpc.dev-vpc]
}



/*
resource "aws_instance" "diboec2" {
  ami = var.ami
  instance_type = var.type
  user_data = {
EOF
#!/bin/bash
yum install -y httpd
systemctl enable httpd
systemctl start httpd
EOF
  }
  count = var.count-ec2

  depends_on = [aws_vpc.dev-vpc]
}
*/