resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name = data.aws_key_pair.example.key_name
  vpc_security_group_ids = [aws_security_group.demo_dynamic.id]

  tags = {
    Name = "lifecycle demo 1"
  }
   
}

resource "aws_security_group" "demo_dynamic" {
  name        = "demo dynamic"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      description      = "TLS from VPC"
      from_port        = port.value
      to_port          = port.value
      protocol         = "tcp"
    }
  }



  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_tls"
  }
}



data "aws_key_pair" "example" {
  key_name = "terraform_key"
  
}


