data "aws_ami" "latest" {
  //executable_users = ["self"]
  most_recent      = true
  //name_regex       = "^myami-\\d{3}"
  owners           = ["amazon"]

  

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

locals {
  image_id = "ami-01c705eb3d97db9b3"
}


output "latest_image_id" {
  value = data.aws_ami.latest.id
}


resource "aws_instance" "web" {
  ami           = local.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "count servers"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}


