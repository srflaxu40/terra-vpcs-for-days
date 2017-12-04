# Create Routes

resource "aws_route_table" "public-subnets" {
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${var.gateway_id}"
  }

  tags {
    Name = "public-subnets-vpc-${var.environment}"
  }
}

resource "aws_route_table" "private-subnets" {
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${var.nat_id}"
  }

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${var.nat_id}"
  }

  tags {
    Name = "private-subnets-vpc-${var.environment}"
  }
}

