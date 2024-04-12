# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "keeper" {
  type = string
}

variable "instances" {
  type = number
}

component "random" {
  source = "./random"

  inputs = {
      keeper = var.keeper
  }

  providers = {
    null = provider.random.this
  }
}
