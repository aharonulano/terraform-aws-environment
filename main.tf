resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block # the range of IPs to your private cloud.
  tags = {                        # tags help organize your resources and manage them more easily.
    Name = "main-vpc"
  }
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "${var.aws_region}-a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.2.0/4"
  availability_zone = "${var.aws_region}-b"

  tags = {
    Name = "private-subnet"
  }
}