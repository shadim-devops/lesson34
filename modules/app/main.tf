variable "name" {}
variable "subnet_id" {}

resource "aws_instance" "server" {
  ami           = "ami-12345678"
  instance_type = "t3.micro"
  subnet_id     = var.subnet_id

  tags = {
    Name = var.name
  }
}