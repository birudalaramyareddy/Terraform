provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./ec2-instance"
  ami_value = var.ami_value # replace this
  instance_type_value = var.instance_type_value
  subnet_id_value = var.subnet_id_value
}