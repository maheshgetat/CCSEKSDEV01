# VPC Endpoints
resource "aws_vpc_endpoint" "sts" {
 vpc_id = var.vpc_id
  service_name = "com.amazonaws.${var.region}.sts"
   vpc_endpoint_type = "Interface"
   private_dns_enabled = true
   subnet_ids =  var.private_subnet_ids
  security_group_ids = [aws_security_group.endpoint_ec2.id]
  tags = {
    Name = "STS VPC Endpoint Interface "
  }
}

# ECR
resource "aws_vpc_endpoint" "ecr_dkr" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.region}.ecr.dkr"
  vpc_endpoint_type = "Interface"
   private_dns_enabled = true
  subnet_ids          =  var.private_subnet_ids
    security_group_ids = [aws_security_group.endpoint_ecr.id]
  tags = {
    Name = "ECR Docker VPC Endpoint Interface "
    }
}

resource "aws_vpc_endpoint" "ecr_api" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.region}.ecr.api"
  vpc_endpoint_type = "Interface"
  private_dns_enabled = true
  subnet_ids          =  var.private_subnet_ids
    security_group_ids = [ aws_security_group.endpoint_ecr.id]
  tags = {
    Name = "ECR API VPC Endpoint Interface "
    }
}

# EC2
resource "aws_vpc_endpoint" "ec2" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.region}.ec2"
  vpc_endpoint_type = "Interface"
  private_dns_enabled = true
  subnet_ids          =  var.private_subnet_ids
    security_group_ids = [aws_security_group.endpoint_ec2.id]
    tags = {
    Name = "EC2 VPC Endpoint Interface "
    
  }
}

# EC2
resource "aws_vpc_endpoint" "loadbalancer" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.region}.elasticloadbalancing"
  vpc_endpoint_type = "Interface"
  private_dns_enabled = true
  subnet_ids          =  var.private_subnet_ids
    security_group_ids = [aws_security_group.endpoint_ec2.id]
  tags = {
    Name = "elasticloadbalancer VPC Endpoint Interface "
      }
}