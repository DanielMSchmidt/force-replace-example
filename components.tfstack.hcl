# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}

component "bucket" {
  source = "./bucket"

  inputs = {
      bucket_name = "foo"
  }

  providers = {
    aws = provider.aws.configurations
  }
}
