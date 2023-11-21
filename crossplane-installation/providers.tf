provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "kubectl" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "aws" {
  region = "us-east-1"
}
