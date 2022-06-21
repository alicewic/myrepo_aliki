output "instanceid" {
    value = aws_instance.dev-ec2.*.id
}