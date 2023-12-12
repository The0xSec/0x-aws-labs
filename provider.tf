terraform {
    backend "s3" {
        bucket = "0xvmx-terraform-state-collection"
        key    = "0x-demos/terraform.tfstate"
        region = "us-east-1"
    }

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "5.30"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}
