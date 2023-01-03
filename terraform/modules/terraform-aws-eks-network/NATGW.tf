
resource "aws_nat_gateway" "NATGW" {
  allocation_id = aws_eip.natEIP.id
  subnet_id     = aws_subnet.public-subnet.id

  depends_on = [
    aws_vpc.network,
    aws_subnet.public-subnet,
  ]
}

