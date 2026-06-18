provider "aws" {
  region = "ap-south-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_security_group" "app_server_sg" {
  name        = "app-server-sg"
  description = "Security group for app server"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
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

resource "aws_key_pair" "app_server_key" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  security_groups = [aws_security_group.app_server_sg.name]
  key_name = aws_key_pair.app_server_key.key_name
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update && sudo apt upgrade -y
              sudo apt install docker.io -y
              sudo mkdir -p /usr/local/lib/docker/cli-plugins && sudo curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o /usr/local/lib/docker/cli-plugins/docker-compose && sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
              sudo systemctl start docker
              sudo systemctl enable docker
              usermod -aG docker ubuntu
              cd /home/ubuntu
              git clone https://github.com/Lavanya-GOW/aws-production-flask-app
              EOF

  tags = {
    Name = var.instance_name
  }
}
