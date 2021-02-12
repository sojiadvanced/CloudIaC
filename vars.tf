# Variable creation for AWS Deployment

variable "aws_region" {
  type = string             # This shows the type of variable
  default = "eu-east-2"
}

variable "AMI" {
  type = "map"
  default = {
    eu-east-2 = "ami-03dea29b0216a1e03",
    eu-east-1 = "ami-03dea29b0216a1e04"
  }
}