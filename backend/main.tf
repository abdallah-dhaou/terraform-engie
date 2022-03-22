resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  tags = {
    Name = "backend demo"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}


