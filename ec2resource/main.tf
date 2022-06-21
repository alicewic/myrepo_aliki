provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "myfirstec2" {
   ami           = "ami-0742b4e673072066f"
   instance_type = "t2.micro"
   tags = {
      Name = "alikiec2server"
      Type = "Test1"
      Owner = "Tuesday"
      Role = "Admin"
   }
   count = 2
}

resource "aws_s3_bucket" "aliki-terraf21" {
  bucket = "terraf21-aliki"
  acl    = "private"
  force_destroy = "true"

  tags = {
    Name        = "AWKF"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_policy" "aliki-terraf21" {
  bucket = aws_s3_bucket.aliki-terraf21.id

    policy = <<POLICY
{
  "Id": "Policy1617167643227",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1617167639645",
      "Action": [
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetObjectVersionAcl",
        "s3:ListBucket",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::terraf21-aliki/*",
      "Principal": "*"
    }
  ]
}
POLICY
}

