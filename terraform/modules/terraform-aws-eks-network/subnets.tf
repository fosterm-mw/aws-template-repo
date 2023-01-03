
resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.network.id
  cidr_block = var.public_cidr

  tags = {
    Name = "public-subnet"
  }

  depends_on = [
    aws_vpc.network,
  ]
}

resource "aws_subnet" "private-subnet" {
  vpc_id     = aws_vpc.network.id
  cidr_block = var.private_cidr

  tags = {
    Name = "private-subnet"
  }

  depends_on = [
    aws_vpc.network,
  ]
}

