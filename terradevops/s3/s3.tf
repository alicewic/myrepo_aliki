resource "aws_s3_bucket" "aliki_understake21" {
    bucket = "aliki-ut-21"
    acl = "private"
    force_destroy = "true"
}