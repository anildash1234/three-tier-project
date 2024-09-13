terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }

   backend "s3" {
    bucket         = "cloudok098765"
    key            = "vpc/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock-dynamo"
  }

  required_version = ">= 1.6.3"
}
