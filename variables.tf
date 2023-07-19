##########################################################################################
#AWS authentication variables
/*
variable "aws_access_key" {
  type = string
  description = "AWS Access Key"
}
variable "aws_secret_key" {
  type = string
  description = "AWS Secret Key"
}
*/
variable "aws_key_pair" {
  type = string
  description = "AWS Key Pair"
}
##########################################################################################
#AWS region
variable "aws_region" {
  description = "AWS region"
  default     = "ap-northeast-2"
}
##########################################################################################
#AWS AZ
variable "aws_az_a" {
  type = string
  description = "AWS AZ"
  default = "ap-northeast-2a"
}
variable "aws_az_c" {
  type = string
  description = "AWS AZ"
  default = "ap-northeast-2c"
}
##########################################################################################
#VPC생성
variable "aws_vpc_a_cidr" {
  type = string
  description = "CIDR for the VPC"
  default = "10.11.0.0/16"
}
variable "aws_vpc_b_cidr" {
  type = string
  description = "CIDR for the VPC"
  default = "10.22.0.0/16"
}
##########################################################################################
#서브넷 생성
variable "aws_vpc_a_subnet_a_cidr" {
  type = string
  description = "CIDR for the subnet"
  default = "10.11.1.0/24"
}
variable "aws_vpc_a_subnet_b_cidr" {
  type = string
  description = "CIDR for the subnet"
  default = "10.11.2.0/24"
}
variable "aws_vpc_b_subnet_a_cidr" {
  type = string
  description = "CIDR for the subnet"
  default = "10.22.1.0/24"
}
variable "aws_vpc_b_subnet_b_cidr" {
  type = string
  description = "CIDR for the subnet"
  default = "10.22.2.0/24"
}
