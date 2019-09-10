# Create Subnet - there is no good way to do this
# dynamically; tf needs procedural control!

# PUBLIC SUBNETS:

resource "aws_subnet" "public_subnet_1a" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1a"
  cidr_block = "10.1.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${var.environment}-1a"
  }

}

output "public_subnet_1a" {
  value = "${aws_subnet.public_subnet_1a.id}"
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1b"
  cidr_block = "10.1.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${var.environment}-1b"
  }

}

output "public_subnet_1b" {
  value = "${aws_subnet.public_subnet_1b.id}"
}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1c"
  cidr_block = "10.1.3.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${var.environment}-1c"
  }

}

output "public_subnet_1c" {
  value = "${aws_subnet.public_subnet_1c.id}"
}

resource "aws_subnet" "public_subnet_1d" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1d"
  cidr_block = "10.1.4.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${var.environment}-1d"
  }

}

output "public_subnet_1d" {
  value = "${aws_subnet.public_subnet_1d.id}"
}

resource "aws_subnet" "public_subnet_1e" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1e"
  cidr_block = "10.1.5.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${var.environment}-1e"
  }

}

output "public_subnet_1e" {
  value = "${aws_subnet.public_subnet_1e.id}"
}

resource "aws_subnet" "public_subnet_1f" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1f"
  cidr_block = "10.1.6.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${var.environment}-1f"
  }

}

output "public_subnet_1f" {
  value = "${aws_subnet.public_subnet_1f.id}"
}

# PRIVATE SUBNETS:

resource "aws_subnet" "private_subnet_1a" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1a"
  cidr_block = "10.1.7.0/24"

  tags = {
    Name = "private-subnet-${var.environment}-1a"
  }

}

output "private_subnet_1a" {
  value = "${aws_subnet.private_subnet_1a.id}"
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1b"
  cidr_block = "10.1.8.0/24"

  tags = {
    Name = "private-subnet-${var.environment}-1b"
  }

}

output "private_subnet_1b" {
  value = "${aws_subnet.private_subnet_1b.id}"
}

resource "aws_subnet" "private_subnet_1c" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1c"
  cidr_block = "10.1.9.0/24"

  tags = {
    Name = "private-subnet-${var.environment}-1c"
  }

}

output "private_subnet_1c" {
  value = "${aws_subnet.private_subnet_1c.id}"
}

resource "aws_subnet" "private_subnet_1d" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1d"
  cidr_block = "10.1.10.0/24"

  tags = {
    Name = "private-subnet-${var.environment}-1d"
  }

}

output "private_subnet_1d" {
  value = "${aws_subnet.private_subnet_1d.id}"
}

resource "aws_subnet" "private_subnet_1e" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1e"
  cidr_block = "10.1.11.0/24"

  tags = {
    Name = "private-subnet-${var.environment}-1e"
  }

}

output "private_subnet_1e" {
  value = "${aws_subnet.private_subnet_1e.id}"
}

resource "aws_subnet" "private_subnet_1f" {
  vpc_id = "${var.vpc_id}"
  availability_zone = "us-east-1f"
  cidr_block = "10.1.12.0/24"

  tags = {
    Name = "private-subnet-${var.environment}-1f"
  }

}

output "private_subnet_1f" {
  value = "${aws_subnet.private_subnet_1f.id}"
}
