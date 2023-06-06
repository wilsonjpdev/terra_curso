terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-01107263728f3bef4"
  instance_type = "t2.micro"
  key_name = "iac-alura"

  tags = {
    Name = "Primeira Intancia"
  }
}
