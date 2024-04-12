required_providers {
  random = {
    source  = "hashicorp/random"
    version = "= 3.3.2"
  }

  null = {
    source  = "hashicorp/null"
    version = "~> 3.1.1"
  }
}

provider "random" "this" {}
provider "null" "this" {}
