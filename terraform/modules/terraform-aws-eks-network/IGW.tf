
resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.network.id

  depends_on = [
    aws_vpc.network,
  ]
}

