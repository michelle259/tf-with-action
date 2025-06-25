resource "aws_vpc" "backend-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "tf-backend-plan"
  }
}

module "backend" {
  source = "./modules/backend"
}

module "DynamoDB" { 
  source = "./modules/dynamodb"
}

module "s3" {
  source = "./modules/s3"
}