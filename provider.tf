terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.58.0"
    }
  }
}
provider "aws" {
  region = var.region
}
 backend "s3" {
    bucket = "ccs-aws-eks-cluster-terraform-state"
    key = "ccs-aws-eks-cluster/terraform.tfstate"
    region = "us-east-1"
   # dynamodb_table = "euw1-aws-eks-cluster-tf-state"
    encrypt = true
  }
}



