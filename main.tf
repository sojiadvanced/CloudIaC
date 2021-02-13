# Creation of EC2


resource "aws_instance" "web1" {
  ami = lookup(var.AMI,var.aws_region)
  instance_type = "t2.micro"
  key_name = "masterkey"
  private_ip = "172.31.32.10"
  vpc_security_group_ids = [aws_security_group.prodsec.id]
  subnet_id = "subnet-6028fe2c"
  # availability_zone = "eu-west-2a"
}


resource "aws_security_group" "prodsec" {

  name = "prodsec"
  description = "Filter inbound access from test server"
  ingress {
  from_port = 0
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["176.58.112.12/32"]
  }
}

output "InstanceID" {

  value = aws_instance.web1.availability_zone
  description = "Obtain the az of the ec-2 instance"
} 




