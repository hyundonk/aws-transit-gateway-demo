#Define the route table to the internet
resource "aws_route_table" "vpc-a-rtb-subnet-a" {
  vpc_id = aws_vpc.vpc-a.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc-a-igw.id
  }

  route {
    cidr_block = var.aws_vpc_b_cidr
    transit_gateway_id = aws_ec2_transit_gateway.test-tgw.id
  }

  tags = {
    Name = "vpc-a-rtb-subnet-a"
    Environment = var.app_environment
  }
}
resource "aws_route_table" "vpc-a-rtb-subnet-b" {
  vpc_id = aws_vpc.vpc-a.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc-a-igw.id
  }

  route {
    cidr_block = var.aws_vpc_b_cidr
    transit_gateway_id = aws_ec2_transit_gateway.test-tgw.id
  }

  tags = {
    Name = "vpc-a-rtb-subnet-b"
    Environment = var.app_environment
  }
}

resource "aws_route_table" "vpc-b-rtb-subnet-a" {
  vpc_id = aws_vpc.vpc-b.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc-b-igw.id
  }

  route {
    cidr_block = var.aws_vpc_a_cidr
    transit_gateway_id = aws_ec2_transit_gateway.test-tgw.id
  }

  tags = {
    Name = "vpc-b-rtb-subnet-a"
    Environment = var.app_environment
  }
}
resource "aws_route_table" "vpc-b-rtb-subnet-b" {
  vpc_id = aws_vpc.vpc-b.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc-b-igw.id
  }

  route {
    cidr_block = var.aws_vpc_a_cidr
    transit_gateway_id = aws_ec2_transit_gateway.test-tgw.id
  }

  tags = {
    Name = "vpc-b-rtb-subnet-b"
    Environment = var.app_environment
  }
}

#Assign the public route table to the subnet
resource "aws_route_table_association" "vpc-a-rtb-subnet-a-attach"{
  subnet_id = aws_subnet.vpc-a-subnet-a.id
  route_table_id = aws_route_table.vpc-a-rtb-subnet-a.id
}
resource "aws_route_table_association" "vpc-a-rtb-subnet-b-attach"{
  subnet_id = aws_subnet.vpc-a-subnet-b.id
  route_table_id = aws_route_table.vpc-a-rtb-subnet-b.id
}
resource "aws_route_table_association" "vpc-b-rtb-subnet-a-attach"{
  subnet_id = aws_subnet.vpc-b-subnet-a.id
  route_table_id = aws_route_table.vpc-b-rtb-subnet-a.id
}
resource "aws_route_table_association" "vpc-b-rtb-subnet-b-attach"{
  subnet_id = aws_subnet.vpc-b-subnet-b.id
  route_table_id = aws_route_table.vpc-b-rtb-subnet-b.id
}
