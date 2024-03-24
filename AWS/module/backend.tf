terraform {
  backend "s3" {
    bucket = "ramya-demo-zxx"        # change the value accordingly
    region = "us-east-1"             # change the value accordingly
    key = "ramya/terraform.tfstate"  # change the value accordingly
    dynamodb_table = "terraform_lock" # change the value accordingly
  }
}