resource "aws_instance" "nameOfec2" {
  ami                    = "ami-0c02fb55956c7d316" # Ubuntu 22.04 (N. Virginia Example) we put ami also manually from aws
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.nameOfSubnet.id
  vpc_security_group_ids = [aws_security_group.nameOfSecurityGroup.id]
  associate_public_ip_address = true  # important for SSH access

  key_name = "nameofKeyPair" #we put from aws

  tags = {
    Name = "nisha-ec2-instance"
  }
}


