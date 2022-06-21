terraform {
  backend "s3" {
    bucket = "aliki-dev-tfstate01"
    key = "aliki-dev-tfstate01/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "aliki-state-lock-dynamo"
  }
}
/*
when creating the Dynamp DB table, make sure to create partition key as "LockID".
*/
