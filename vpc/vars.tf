variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  type = string
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

variable "private_subnet_cidr_blocks" {
  type        = list(string)
  default     = ["10.127.40.0/22", "10.127.44.0/22"]
  description = "CIDR block range for the private subnet"
}


variable "availability_zones" {
  type  = list(string)
  default = ["us-east-1a", "us-east-1b"]
  description = "List of availability zones for the selected region"
}

variable "region" {
  description = "aws region to deploy to"
  type        = string
}
