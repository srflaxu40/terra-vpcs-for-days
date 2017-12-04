# Create NAT
# This does:
# 1.  Creates SG
# 2.  Creates network interface
# 3.  Creates EIP associating with network interface
# 4.  Creates NAT GW associating it with EIP

resource "aws_eip" "nat" {
  vpc      = true
}

resource "aws_nat_gateway" "gw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${var.public_subnet_id}"

}

output "nat_id" {
  value = "${aws_nat_gateway.gw.id}"
}

