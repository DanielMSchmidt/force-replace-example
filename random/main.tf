# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

variable "keeper" {
  type = string
}

resource "random_pet" "server" {
  keepers = {
    keeper = var.keeper
  }
}

output "pet" {
  value = random_pet.server.id
}
