required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.44.0"
  }
}

provider "aws" "configurations" {
  config {
    assume_role_with_web_identity {
      role_arn                = var.role_arn
      web_identity_token_file = var.identity_token_file
    }

    default_tags {
      tags = {
          "Testing" = "Force-Replace"
          }
    }
  }
}
