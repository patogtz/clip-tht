module "ec2" {
  source = "../modules/ec2"

  
}

module "rds" {
  source = "../modules/rds"

  
}

module "vpc" {
  source = "../modules/vpc"

  
}