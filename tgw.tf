#Create Transit Gateway
resource "aws_ec2_transit_gateway" "test-tgw" {
  description = "Transit Gateway"
  auto_accept_shared_attachments = "enable"
  tags = {
      Name = "test-tgw"
      Environment = var.app_environment
  }
}

#Attach subnet to TGW
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc-a-tgw-attachment" {
  vpc_id             = aws_vpc.vpc-a.id                    #서브넷이 위치하는 VPC
  subnet_ids         = [aws_subnet.vpc-a-subnet-a.id, aws_subnet.vpc-a-subnet-b.id ]#TGW에 붙을 서브넷
  transit_gateway_id = aws_ec2_transit_gateway.test-tgw.id #붙을 대상이되는 TGW
  tags = {
      Name = "test-tgw-attachment"
  }
}
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc-b-tgw-attachment" {
  vpc_id             = aws_vpc.vpc-b.id
  subnet_ids         = [aws_subnet.vpc-b-subnet-a.id, aws_subnet.vpc-b-subnet-b.id ]
  transit_gateway_id = aws_ec2_transit_gateway.test-tgw.id
  tags = {
      Name = "test-tgw-attachment"
  }
}


