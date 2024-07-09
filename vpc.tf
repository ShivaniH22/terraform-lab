resource "aws_vpc" "tf_vpc" {
    cidr_block = var.vpc_cidr
    tags = {
        "Name" = "TF-DEMO-vpc"
        "Description" = "This VPC created for TF" 
            
    }
}
resource "aws_subnet" "public_subnet" {
vpc_id = aws_vpc.tf_vpc.id
  cidr_block = "10.10.1.0/24"
  availability_zone = "us-east-1a"
tags = {
  "Name" ="Public-subnet"
}
}
 
  
# }

resource "aws_subnet" "Private_subnet" {
vpc_id = aws_vpc.tf_vpc.id
  cidr_block = "10.10.2.0/24"
  availability_zone = "us-east-1b"
tags = {
  "Name" ="Private-subnet"
}
}
  
resource "aws_internet_gateway" "tf_ig" {
  vpc_id = aws_vpc.tf_vpc.id
}
resource "aws_route_table" "Private_subnet_rt" {
  vpc_id = aws_vpc.tf_vpc.id
  
}
resource "aws_route_table_association" "private_rt_association" {
  route_table_id = aws_route_table.Private_subnet_rt.id
  subnet_id = aws_subnet.Private_subnet.id
  
}