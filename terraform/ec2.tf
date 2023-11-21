resource "aws_security_group" "allow_ssh_a" {
  name   = "allow_ssh_vpc_a"
  vpc_id = module.vpc-a.vpc_id

  #Incoming traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #replace it with your ip address
  }

  #Outgoing traffic
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2-vpc-a" {
  ami               = local.ami
  instance_type     = "t3.micro"
  availability_zone = local.azs[0]
  key_name          = "tf-key-pair"
  subnet_id         = module.vpc-a.public_subnets[0]
  security_groups   = [aws_security_group.allow_ssh_a.id]
  tags = {
    Name = "EC2 VPC A - AZ1"
  }
}
