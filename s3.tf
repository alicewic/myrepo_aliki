resource "aws_s3_bucket" "review" {
  bucket = var.s3_bucket

  tags = var.tags
}

resource "aws_s3_bucket_acl" "review" {
  bucket = var.s3_bucket
  acl    = "private"
}
