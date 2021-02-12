# Creation of EC2


resource "aws_instance" "web1" {
  ami = lookup(var.AMI,var.aws_region)
  instance_type = "t2.micro"
  key_name = "masterkey"
  private_ip = "172.31.32.10"
  security_groups = ['sg-3aa3fa5b']
  subnet_id = "subnet-6028fe2c"
  availability_zone = "eu-west-2a"
}




