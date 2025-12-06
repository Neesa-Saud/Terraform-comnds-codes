#Define the security group
resource "aws_security_group" "nameOfSecurityGroup" {
    name_prefix = "nameOfSecurityGroup_security_group"
    vpc_id = aws_vpc.nameOfVPC.id
}
ingress { #incoming
    from port = 22
    to port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

ingress {
     from port = 0
    to port = 0
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
engress{ #outgoing
     from port = 0
    to port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}