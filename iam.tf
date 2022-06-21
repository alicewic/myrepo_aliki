resource "aws_iam_user" "review" {
  name = var.user_name
  path = "/system/"

  tags = var.tags
}