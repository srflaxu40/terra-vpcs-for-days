# Create Route Associations

# PUBLIC

resource "aws_route_table_association" "public_1a" {
  subnet_id      = "${var.public_subnet_1a}"
  route_table_id = "${var.public_route_table}"
}

resource "aws_route_table_association" "public_1b" {
  subnet_id      = "${var.public_subnet_1b}"
  route_table_id = "${var.public_route_table}"
}

resource "aws_route_table_association" "public_1c" {
  subnet_id      = "${var.public_subnet_1c}"
  route_table_id = "${var.public_route_table}"
}

resource "aws_route_table_association" "public_1d" {
  subnet_id      = "${var.public_subnet_1d}"
  route_table_id = "${var.public_route_table}"
}

resource "aws_route_table_association" "public_1e" {
  subnet_id      = "${var.public_subnet_1e}"
  route_table_id = "${var.public_route_table}"
}

resource "aws_route_table_association" "public_1f" {
  subnet_id      = "${var.public_subnet_1f}"
  route_table_id = "${var.public_route_table}"
}

# PRIVATE

resource "aws_route_table_association" "private_1a" {
  subnet_id      = "${var.private_subnet_1a}"
  route_table_id = "${var.private_route_table}"
}

resource "aws_route_table_association" "private_1b" {
  subnet_id      = "${var.private_subnet_1b}"
  route_table_id = "${var.private_route_table}"
}

resource "aws_route_table_association" "private_1c" {
  subnet_id      = "${var.private_subnet_1c}"
  route_table_id = "${var.private_route_table}"
}

resource "aws_route_table_association" "private_1d" {
  subnet_id      = "${var.private_subnet_1d}"
  route_table_id = "${var.private_route_table}"
}

resource "aws_route_table_association" "private_1e" {
  subnet_id      = "${var.private_subnet_1e}"
  route_table_id = "${var.private_route_table}"
}

resource "aws_route_table_association" "private_1f" {
  subnet_id      = "${var.private_subnet_1f}"
  route_table_id = "${var.private_route_table}"
}
