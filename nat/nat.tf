# Create NAT
# This does:
# 1.  Creates SG
# 2.  Creates network interface
# 3.  Creates EIP associating with network interface
# 4.  Creates NAT GW associating it with EIP

#resource "aws_network_interface" "nat" {
#  subnet_id       = "${var.public_subnet_id}"

#  tags {
#    Name = "aws-network-int-${var.environment}"
#  }
#}

resource "aws_eip" "nat" {
  vpc      = true
  #network_interface = "${aws_network_interface.nat.id}"

}

resource "aws_nat_gateway" "gw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${var.public_subnet_id}"

}

