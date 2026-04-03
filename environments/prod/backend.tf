terraform {
  backend "s3" {
    bucket         = "adeel-eks-tf-state"     # Same bucket as Dev
    key            = "prod/eks.tfstate"       # Path badal diya (prod/...)
    region         = "us-east-1"
    dynamodb_table = "terraform-locking"      # Same table for locking
    encrypt        = true
  }
}