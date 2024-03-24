provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./ec2-instance"
  ami_value = var.ami_value # replace this
  instance_type_value = lookup(var.instance_type_value, terraform.workspace, "t2.micro")
  subnet_id_value = var.subnet_id_value
}