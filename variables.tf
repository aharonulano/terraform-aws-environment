variable "account" {
  description = "(Required) the account your working on"
  type = string
  sensitive = true
}

variable "profile_name" {
  description = "(Required) the profile you are using to work on aws different users different permissions and tasks"
  type = string
  default = "a-user-name"
}

variable "aws_region" {
  description = "(Required) which region are you going to work on"
  type = string
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "(Required) the range of the IPs for your Virtual Private Cloud"
  type = string
  default = "10.0.0.0/16"
}