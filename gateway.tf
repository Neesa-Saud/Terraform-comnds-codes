#Create internet gateway
resource "aws_internet_gateway" "nameOfGateway" {
  vpc_id = aws_vpc.nameOfVPC.id

  tags = {
    Name = "nisha-igw"
  }
}
