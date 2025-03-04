terraform {
required_providers {
aws = {
    source = "hashicorp/aws"
    version = "5.84.0"  
}
}
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "example"{
    bucket = "my-tf-test-15952521"
    tags = {
        Name = "my bucket"
        Environment = "test" 
    }
}