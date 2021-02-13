# Variable for infrastructure provisioning

provider "aws" {
  region = var.aws_region
  profile = "default"
  shared_credentials_file = "~/.aws/credentials"
  
}
