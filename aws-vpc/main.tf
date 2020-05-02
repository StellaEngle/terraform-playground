provider "aws" {
  profile = "stella" # never hardcode credentials use profiles instead
  region = "${var.aws_region}"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  # instance_tenancy = "dedicated" - we don't really need dedicated machines.

  tags = {
    Name = "main"
  }
}

# Create an internet gateway for access to the outside world from the subnets
resource "aws_internet_gateway" "main_ig" {
  vpc_id = "${aws_vpc.main.id}"
}

# Create publicA, publicB and publicC subnets
resource "aws_subnet" "subnets" {
  vpc_id                  = "${aws_vpc.main.id}"
  map_public_ip_on_launch = true
  for_each = "${var.subnet_data}"
  cidr_block = each.value["cidr_block"]

  availability_zone =  each.value["availability_zone"]

  tags = {
    Name = each.key
  }
}

# Create privateA, privateB and privateC subnets
# resource "aws_subnet" "private_subnets" {
#   vpc_id                  = "${aws_vpc.main.id}"
#   for_each = "${var.private_subnets_info}"
#   cidr_block = each.value

#   tags = {
#     Name = each.key
#   }
# }

# # Create internalA, internalB and internalC subnets
# resource "aws_subnet" "internal_subnets" {
#   vpc_id                  = "${aws_vpc.main.id}"
#   for_each = "${var.internal_subnets_info}"
#   cidr_block = each.value

#   tags = {
#     Name = each.key
#   }
# }