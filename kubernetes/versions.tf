# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    null = {
      source  = "hashicorp/null"
      version = "> 3.0.0"
    }
  }

  required_version = "~> 1.3"
}
