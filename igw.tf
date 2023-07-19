#Define the internet gateway
resource "aws_internet_gateway" "vpc-a-igw" {
  vpc_id = aws_vpc.vpc-a.id
  tags = {
    Name = "vpc-a-igw"
    Environment = var.app_environment
  }
}
resource "aws_internet_gateway" "vpc-b-igw" {
  vpc_id = aws_vpc.vpc-b.id
  tags = {
    Name = "vpc-b-igw"
    Environment = var.app_environment
  }
}
