provider "aws" {
  region = "ap-south-1" # Replace with your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-05d2d839d4f73aafb" # Replace with a current AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformInstance"
  }
}
