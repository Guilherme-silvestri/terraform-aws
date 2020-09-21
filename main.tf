provider  "aws" {

    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}

resource "aws_security_group" "acesso-https" {
  name        = "acesso-https"
  description = "acesso-https"


  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = "${var.cdirs_acesso_remoto}"
  }
  tags = {
    Name = "ssh"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.1.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "internal_network"
  }
}