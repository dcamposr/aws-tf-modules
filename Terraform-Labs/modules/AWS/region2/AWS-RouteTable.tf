
#Custom Private Route Table Creation
resource "aws_route_table" "rt_private" {
    vpc_id = aws_vpc.VPC-creation[0].id
    
     tags = {
        Name = "RT-Private ${var.vpc-name[0]}"
     }
}
resource "aws_route_table_association" "rt_private_assoc" {
    subnet_id = aws_subnet.Private-Subnet.id
    route_table_id = aws_route_table.rt_private.id
    
}













