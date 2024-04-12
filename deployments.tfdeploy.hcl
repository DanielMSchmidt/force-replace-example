# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  variables = {
    prefix = "foo"
    keeper = "bar"
  }
}
