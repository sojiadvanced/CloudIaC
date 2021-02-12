# Variable for infrastructure provisioning

provider "aws" {
  region = var.aws_region
  profile = "defualt"
  shared_credentals_file = "~/.aws/credentials"
  tags = {
  name = "AWS Cloud" 
  }
}
