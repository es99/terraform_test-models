output "ami" {
  value = module.ec2-instance.ami
}

output "az" {
  value = module.ec2-instance.availability_zone
}

output "iam_role_name" {
  value = module.ec2-instance.iam_role_name
}

output "instance_id" {
  value = module.ec2-instance.id
}

output "public_dns" {
  value = module.ec2-instance.public_dns
}

output "public_ip" {
  value = module.ec2-instance.public_ip
}