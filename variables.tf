variable "region" {
  description = "AWS region to deploy to"
  type        = string
  default = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type = string
  default = "CCSEKSDEV01"
}
variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}
variable "vpc_id" {
description = "Define VPC in which EKS cluster need to created"
default = "vpc-0f321e51b7ff93b6d" 
}
variable "private_subnet_ids" {
description = "Define subnets in which EKS cluster need to created"
type = list(string)
default = ["subnet-08c6f8e92c38f9340","subnet-0cda5305fdb969f3f"]
}
variable "vpc_cidr" {
description = "CIDR block range for the VPC"
default = "10.127.32.0/19"
}
variable "private_subnet_cidr_blocks" {
description = "CIDR block range for the private subnet"
type        = list(string)
default     = ["10.127.40.0/22", "10.127.44.0/22"]
}