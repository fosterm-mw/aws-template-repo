
resource "aws_route_table_association" "public-rt-association" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.public-rt.id

  depends_on = [
    aws_subnet.public-subnet,
    aws_route_table.public-rt,
  ]
}

resource "aws_route_table_association" "private-rt-association" {
  subnet_id      = aws_subnet.private-subnet.id
  route_table_id = aws_route_table.private-rt.id

  depends_on = [
    aws_subnet.private-subnet,
    aws_route_table.private-rt,
  ]
}

