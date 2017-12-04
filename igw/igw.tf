# Create IGW


resource "aws_internet_gateway" "gw" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name = "vpc-${var.environment}-igw"
  }
}

output "gateway_id" {
  value = "${aws_internet_gateway.gw.id}"
}

