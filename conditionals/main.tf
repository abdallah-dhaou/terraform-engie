
locals {
  image_id = "ami-01c705eb3d97db9b3"
}


resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  tags = {
    Name = "app-${upper(var.environment)}"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}


