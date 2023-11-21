terraform {
  required_version = "~> 1.3"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.10"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.3.0"
    }
  }
}
