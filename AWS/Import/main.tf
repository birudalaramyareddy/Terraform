provider "aws" {
  region = "us-east-1"
}

# terraform import aws_instance.example i-04d6cc3893dd7d781 
# or can use import module based on the terraform version installed use below command
#terraform plan -generate-config-out=generated_resources.tf

resource "aws_instance" "example" {
  ami = "ami-080e1f13689e07408" #replace value
  instance_type = "t2.micro" #replace value
  subnet_id = "subnet-0af6382f350e21d4c" #replace value
}