# Create IGW


resource "aws_internet_gateway" "gw" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name = "vpc-${var.environment}-igw"
  }
}

