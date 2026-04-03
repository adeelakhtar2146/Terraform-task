provider "aws" {
  region = "us-east-1" # Aap apna pasandida region yahan de sakte hain
}

# EKS ke sath communicate karne ke liye Kubernetes provider (optional but recommended)
provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)

  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    command     = "aws"
    # This requires the awscli to be installed locally
    args = ["eks", "get-token", "--cluster-name", module.eks.cluster_name]
  }
}

terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}