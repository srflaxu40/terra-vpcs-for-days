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
