# Create Security Group

# Default Security Group for VPC:

resource "aws_security_group" "create_default_security_group" {
  vpc_id      = "${var.vpc_id}"

  name        = "default-${var.environment}"
  description = "default VPC for all things"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.1.0.0/16"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["10.1.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.1.0.0/16"]
  
  }

}

