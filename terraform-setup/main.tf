provider "aws" {
  region = "eu-north-1"
}


resource "aws_security_group" "web_sg" {
  name        = "jenkins-terraform-sg"
  description = "Allow SSH and HTTP"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "web_server" {
  ami           = "ami-080254318c2d8932f"
  instance_type = "t3.micro"
  key_name      = "ci-cd"

  vpc_security_group_ids = [aws_security_group.web_sg.id]  # ✅ use created SG

  tags = {
    Name = "Terraform-Jenkins-Server"
  }
}

# 🔥 Output
output "instance_public_ip" {
  value = aws_instance.web_server.public_ip
}
