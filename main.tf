/* This is tetrraform script
Author: Shivani */

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
}
// this is provider
provider "aws" {
  //Configuration options
  region = "us-east-1"
}
