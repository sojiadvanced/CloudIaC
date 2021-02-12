# Variable creation for AWS Deployment

variable "aws_region" {
  type = string             # This shows the type of variable
  default = "eu-west-2"
}

variable "AMI" {
  type = "map"
  default = {
    eu-west-2 = "ami-0b6a7a4862157a11a",
    eu-east-2 = "ami-03dea29b0216a1e04"
  }
}
