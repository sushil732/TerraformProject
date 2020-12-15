resource "aws_vpc" "sushil-vpc" {
  cidr_block       = "10.0.0.0/16"
 

  tags = {
    Name = "sushil-vpc"
  }
}

resource "aws_subnet" "subnet_private" {
  
     vpc_id     = aws_vpc.sushil-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.az
  tags = {
    "Name" = "app-subnet-10.0.1.0/24"
  }

}

resource "aws_subnet" "subnet_public" {

  vpc_id     = aws_vpc.sushil-vpc.id
  availability_zone = var.az
  cidr_block = "10.0.2.0/24"
  tags = {
    "Name" = "app-subnet-10.0.2.0/24"
  }
  depends_on = [ aws_vpc.vpc ]

}