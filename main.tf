

resource "aws_instance" "sushil_ec2" {
  ami           = "ami-09558250a3419e7d0"
  instance_type = var.instance_type

  tags = {
    Name = "SUSHIL-EC2"
  }

  vpc_security_group_ids = [aws_security_group.securitygroup1.id]
  key_name = "key"


}


