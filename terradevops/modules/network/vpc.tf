resource "aws_vpc" "wicklife_vpc" {
    cidr_block = var.cidr_block
    tags = var.tags
    Name = dev_vpc
    depends_on = [aws_vpc.dev-vpc] 
}