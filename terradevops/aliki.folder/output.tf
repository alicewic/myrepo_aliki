output "vpc_wicklife_id" {
    value = aws_vpc.wicklife_vpc.id
}

output "aws_s3_bucket" {
    value = aws_s3_bucket.wicklife_bucket.bucket
}

output "aws_instanceid" {
    value = aws_instance.wicklife_instance.id

}

output "aws_db_instanceid" {
    value = aws_db_instance.myRDS.id
}