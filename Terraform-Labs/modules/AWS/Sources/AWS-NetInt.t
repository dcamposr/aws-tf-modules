
# ***************************************
# *** Network Interfaces ****************
# ***************************************
resource "aws_network_interface" "NIC" {
    subnet_id = aws_subnet.MVPC-Public-Subnet.id
    private_ip = aws_subnet.MVPC-Private-Subnet.cidr_block
    security_groups = [aws_security_group.JumpHost-SG.id]


    tags = {
      Name = "Network Interface 0"
    }
}
resource "aws_network_interface" "EC2-Private-HostA" {
    subnet_id = aws_subnet.MVPC-Private-Subnet.id
    private_ip = aws_subnet.MVPC-Private-Subnet.cidr_block
    security_groups = [aws_security_group.PNet-MainVPC.id]

    tags = {
      Name = "Network Interface 0"
    }
}

resource "aws_network_interface" "EC2-Private-HostB" {
    subnet_id = aws_subnet.SVPC-Subnet_A.id
    private_ip = aws_subnet.SVPC-Subnet_A.cidr_block
    security_groups = [aws_security_group.PNet-SecondVPC.id]

    tags = {
      Name = "Network Interface 0"
    }
}








