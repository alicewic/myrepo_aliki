resource "aws_instance" "aliki" {
  ami           = var.ami
  instance_type = var.instance_typegi

  tags = var.tags
}