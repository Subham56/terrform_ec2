provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web" {
    ami= var.instance_ami
    instance_type = var.instance_type
    
    tags = {
    name = "terraform_demo"
} 
}

terraform {
    backend "s3" {
        bucket = "terraform-bucket-demo1"
        region = "ap-south-1"
        key = "terraform.tfstate"

    }
}
