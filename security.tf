
resource "aws_security_group" "securitygroup1" {
  name = "SUSHIL-EC2-SG"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Security group for allowing web traffic"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }


 ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Security group for allowing web traffic"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }
}