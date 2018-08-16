# Create NAT
# This does:
# 1.  Creates EIP associating with network interface.
# 2.  Creates network interface, and associates it with the EIP.
# 3.  Returns NAT ID as outputted variable.

resource "aws_eip" "nat" {
  vpc      = true
}

resource "aws_nat_gateway" "gw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${var.public_subnet_1a}"

}

output "nat_id" {
  value = "${aws_nat_gateway.gw.id}"
}

