resource "aws_subnet" "private_rds" {
  vpc_id               = aws_vpc.vpc.id
  cidr_block           = cidrsubnet(var.cidr_vpc, 4, count.index + length(var.availability_zones))
  availability_zone_id = element(var.availability_zones, count.index)
  tags = {
    Name = "private-${element(var.availability_zones, count.index)}-${var.project_name}${var.ENV_TYPE}"
  }
}

resource "aws_subnet" "private_rds" {
  vpc_id               = aws_vpc.vpc.id
  cidr_block           = cidrsubnet(var.cidr_vpc, 4, count.index + length(var.availability_zones))
  availability_zone_id = element(var.availability_zones, count.index)
  tags = {
    Name = "private-${element(var.availability_zones, count.index)}-${var.project_name}${var.ENV_TYPE}"
  }
}