terraform {
  backend "s3" {
    bucket         = "adeel-eks-tf-state"
    key            = "dev/eks.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locking"
    encrypt        = true
  }
}