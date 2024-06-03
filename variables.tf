variable "ami_linux" {
  description = "ami Linux que será utilizada ao iniciar a instância."
  type        = string
}

variable "ami_windows" {
  description = "ami Windows que será utilizada ao iniciar a instância."
  type        = string
}

variable "iam_role" {
  description = "IAM Role que será utilizada na instância."
  type        = string
  default     = "INFOPUBLIC_LinuxServersEC2"
}

variable "key_name" {
  description = "a chave ssh que será utilizada, caso windows, chave para descriptografar a senha de Administrator"
  type        = string
}

variable "instance_type" {
  description = "Tipo e instância que será utilizado"
  type        = string
}

variable "name" {
  description = "Nome que será utilizado na EC2 na criação."
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "Id da subnet em que a EC2 será criada."
  type        = string
}

variable "vpc_security_groups" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
}