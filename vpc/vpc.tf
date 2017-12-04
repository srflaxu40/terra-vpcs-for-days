# Create VPC

resource "aws_vpc" "vpc" {
  cidr_block         = "10.1.0.0/16"
  enable_dns_support = true
  enable_dns_support = true 

  tags {
    Name = "vpc-${var.environment}"
  }

}
