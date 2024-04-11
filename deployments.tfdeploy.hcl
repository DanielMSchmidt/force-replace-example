# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "simple" {
  variables = {
    role_arn = "arn:aws:iam::891350601298:role/TFCLocalDev-Atlas"
    identity_token_file = identity_token.aws.jwt_filename
  }
}
