terraform {
  backend "s3" {
    bucket         = "tf-backend-turtle"
    key            = "ec2/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
