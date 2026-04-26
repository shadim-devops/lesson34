variable "name" {}
variable "cidr" {}

resource "aws_vpc" "main" {
  cidr_block = var.cidr

  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.cidr, 8, 1)

  tags = {
    Name = "${var.name}-public"
  }
}

output "subnet_id" {
  value = aws_subnet.public.id
}