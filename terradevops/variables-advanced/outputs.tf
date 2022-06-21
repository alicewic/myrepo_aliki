output "instanceid" {
    value = aws_instance.dev-ec2.*.id
}

output "PublicIP" {
    value = aws_instance.dev-ec2.*.public_ip
}

output "s3bucket01" {
    value = aws_s3_bucket.dev-bucket01.bucket
}

output "s3bucket02" {
    value = aws_s3_bucket.dev-bucket02.bucket
}

output "s3bucket03" {
    value = aws_s3_bucket.dev-bucket03.bucket
}
