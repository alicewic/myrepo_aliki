provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "docker-instance" {
   ami           = "ami-0742b4e673072066f"
   instance_type = "t2.micro"
   tags = {
      Name = "MyFirstEC2Server"
      Type = "Test"
      Purpose = "Practice"
      Role = "Architect"
   }
}