provider "aws" {

  region = "us-east-1"

}

resource "aws_instance" "intro" {

  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "mk-testt"
  vpc_security_group_ids = ["sg-0a7bf97b6c2b4b363"]
  tags = {
    Name = "mk-testt"
    Project="mktest"
  }

}