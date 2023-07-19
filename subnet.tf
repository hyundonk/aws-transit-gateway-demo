#Define the subnet
resource "aws_subnet" "vpc-a-subnet-a" {
  vpc_id = aws_vpc.vpc-a.id
  cidr_block = var.aws_vpc_a_subnet_a_cidr
  availability_zone = var.aws_az_a
  tags = {
    Name = "vpc-a-sub-a"
    Environment = var.app_environment
  }
}
resource "aws_subnet" "vpc-a-subnet-b" {
  vpc_id = aws_vpc.vpc-a.id
  cidr_block = var.aws_vpc_a_subnet_b_cidr
  availability_zone = var.aws_az_c
  tags = {
    Name = "vpc-a-sub-b"
    Environment = var.app_environment
  }
}
resource "aws_subnet" "vpc-b-subnet-a" {
  vpc_id = aws_vpc.vpc-b.id
  cidr_block = var.aws_vpc_b_subnet_a_cidr
  availability_zone = var.aws_az_a
  tags = {
    Name = "vpc-b-sub-a"
    Environment = var.app_environment
  }
}
resource "aws_subnet" "vpc-b-subnet-b" {
  vpc_id = aws_vpc.vpc-b.id
  cidr_block = var.aws_vpc_b_subnet_b_cidr
  availability_zone = var.aws_az_c
  tags = {
    Name = "vpc-b-sub-b"
    Environment = var.app_environment
  }
}
