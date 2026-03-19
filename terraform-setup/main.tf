provider "aws" {
  region = "eu-north-1"  # Change this to your preferred region
}

resource "aws_instance" "web_server" {
  ami           = "ami-080254318c2d8932f" # Replace with the latest Ubuntu AMI
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00bba00349b57c508"] # Replace it with the security group of 2048-Jenkins-Terraform-Automation
  key_name      = "ci-cd"  # Replace with your Key-name
  tags = {
    Name = "Terraform-Jenkins-Server"
  }
}

output "instance_public_ip" {
  value = aws_instance.web_server.public_ip
}
