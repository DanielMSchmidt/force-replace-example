# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "keeper" {
  type = string
}

variable "prefix" {
  type = string
}

component "random" {
  source = "./random"

  inputs = {
    prefix = var.prefix
    keeper = var.keeper
  }

  providers = {
    random = provider.random.this
  }
}
