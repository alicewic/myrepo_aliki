resource "aws_vpc" "terra_vpc" {
    cidr_block ="192.168.0.0/16"
    tags = {
        Name = "TerraformVPC"
        Env = "Dev"
    }
}