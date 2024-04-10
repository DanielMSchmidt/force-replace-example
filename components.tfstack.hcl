# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}

required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.44.0"
  }
}

provider "aws" "this" {}

component "bucket" {
  source = "./bucket"

  inputs = {
      bucket_name = "foo"
  }

  providers = {
    aws = provider.aws.this
  }
}
