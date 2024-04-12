required_providers {
    null = {
      source  = "hashicorp/random"
      version = "~> 3.3.2"
    }
}

provider "random" "this" {}
