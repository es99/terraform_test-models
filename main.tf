provider "aws" {
  region = "us-east-2" //ohio
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"

  create_spot_instance = true
  spot_type            = "one-time"

  ami                         = "ami-09040d770ffe2224f"
  associate_public_ip_address = true
  iam_role_name               = "INFOPUBLIC_LinuxServersEC2"
  key_name                    = "terraform-ec2-testes"
  instance_type               = "t3.small"
  name                        = "testes-engels"
  subnet_id                   = "subnet-09aa01223ccf2ac4d"
  vpc_security_group_ids      = ["sg-04f67045b565761d8"]
}