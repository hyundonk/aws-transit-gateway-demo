#Create the VPC
resource "aws_vpc" "vpc-a" {
  cidr_block = var.aws_vpc_a_cidr
  enable_dns_hostnames = false
  enable_dns_support = true
  tags = {
    Name = "vpc_a"
    Environment = var.app_environment
  }
}
resource "aws_vpc" "vpc-b" {
  cidr_block = var.aws_vpc_b_cidr
  enable_dns_hostnames = false
  enable_dns_support = true
  tags = {
    Name = "vpc_b"
    Environment = var.app_environment
  }
}
