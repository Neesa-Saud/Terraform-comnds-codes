#Route Table
resource "aws_route_table" "nameOfRouteTable" {
    vpc_id = aws_vpc.nameOfVPC.id
}
resource "aws_route" "nameOfroute" {
    route_table_id = aws_route_table.nameOfRouteTable.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.nameOfGateway.id
}