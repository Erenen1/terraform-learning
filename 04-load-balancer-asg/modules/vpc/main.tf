resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "${var.vpc_name}-igw"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "${var.vpc_name}-public-rt"
  }
}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.this.id
}

resource "aws_subnet" "this_one" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.subnet_cidr_one
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zones[0]

  tags = {
    "Name" = "${var.subnet_name}-az1"
  }
}

resource "aws_subnet" "this_two" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.subnet_cidr_two
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zones[1]

  tags = {
    "Name" = "${var.subnet_name}-az2"
  }
}

resource "aws_route_table_association" "public_one" {
  subnet_id      = aws_subnet.this_one.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_two" {
  subnet_id      = aws_subnet.this_two.id
  route_table_id = aws_route_table.public.id
}
