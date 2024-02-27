resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = "Main VPC"
  }
}

resource "aws_subnet" "public_subnet" {
  count      = 2
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    Name = "Public Subnet ${count.index}"
  }
}

resource "aws_subnet" "app_subnet" {
  count      = 2
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.${count.index + 2}.0/24"

  tags = {
    Name = "App Subnet ${count.index}"
  }
}

resource "aws_subnet" "db_subnet" {
  count      = 2
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.${count.index + 4}.0/24"

  tags = {
    Name = "DB Subnet ${count.index}"
  }
}
