
resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.network.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  depends_on = [
    aws_vpc.network,
    aws_internet_gateway.IGW,
  ]
}

resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.network.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NATGW.id
  }

  depends_on = [
    aws_vpc.network,
    aws_nat_gateway.NATGW,
  ]
}

