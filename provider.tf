terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
    cloud { 
    
    organization = "tfc-devops-yeeun" 

    workspaces { 
      name = "tf-devops" 
    } 
  } 

  
#   backend "s3" {
#     bucket         = "backend-bucket-ye"
#     key            = "terraform/state-test/terraform.tfstate"
#     region         = "ap-northeast-2"
#     dynamodb_table = "terraform-lock"
#   }
}

provider "aws" {
  region = "ap-northeast-2"
}