resource "aws_instance" "dev-ec2" {
    ami = "ami-0742b4e673072066f"
    instance_type = "t2.micro"
    tags {
        Name = VPCDEV
        Env = Dev
    }
    vpcid = aws_vcp.dev-vpc.id
    count = var.count-ec2
    depends_on = [aws_vpc.dev-vpc]
}