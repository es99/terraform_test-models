provider "aws" {
  region = "us-east-2" //ohio
}

data "aws_ami" "docker-windows" {
  most_recent = true
  owners      = ["amazon", "801119661308"]

  filter {
    name   = "virtualization-type"
    values = ["hvm"] // modo mais moderno
  }

  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-ECS_Optimized-*"]
  }
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"

  create_spot_instance = true
  spot_type            = "one-time"

  ami                         = data.aws_ami.docker-windows.id
  associate_public_ip_address = true
  iam_role_name               = var.iam_role
  key_name                    = var.key_name
  instance_type               = var.instance_type
  name                        = var.name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_security_groups
}