#Define Subnet
resource "aws_subnet" "nisha_subnet" {
    vpc_id = aws_vpc.nameOfVPC.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    tags = {
        Name = "aws-subnet-nisha"
    }
}