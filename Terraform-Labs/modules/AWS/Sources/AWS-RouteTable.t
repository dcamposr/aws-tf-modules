

resource "aws_route" "default_route" {
    route_table_id = aws_vpc.main_vpc.main_route_table_id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_vpc_IGW.id
}

resource "aws_route_table_association" "a" {
    subnet_id = aws_subnet.MVPC-Public-Subnet.id
    route_table_id = aws_route.default_route.route_table_id
    
}













