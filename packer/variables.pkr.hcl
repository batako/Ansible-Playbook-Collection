variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Region"
}

variable "ami_name" {
  type        = string
  default     = "Ansible Test"
  description = "EC2 AMI Name"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 Instance Type"
}

variable "ssh_username" {
  type        = string
  default     = "ec2-user"
  description = "SSH User Name"
}

variable "environment" {
  type        = string
  default     = "development"
  description = "Name of the tag development environment"
}
