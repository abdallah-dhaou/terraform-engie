resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"

  tags = {
    Name = var.tag_name
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  //instance_tenancy = "default"

  tags = {
    Name = var.tag_name
  }
}
