# EKS Cluster ka API Endpoint (Isse aap cluster connect karenge)
output "cluster_endpoint" {
  description = "EKS Cluster ka endpoint"
  value       = module.eks.cluster_endpoint
}

# EKS Cluster ka Naam
output "cluster_name" {
  description = "EKS Cluster ka naam"
  value       = module.eks.cluster_name
}

# VPC ID (Networking module se uthaya gaya)
output "vpc_id" {
  description = "Development VPC ki ID"
  value       = module.networking.vpc_id
}

# Public Subnets ki list
output "public_subnets" {
  value = module.networking.public_subnet_ids
}

# Private Subnets ki list (Jahan nodes hain)
output "private_subnets" {
  value = module.networking.private_subnet_ids
}

# GitHub Actions Role ARN (CI/CD ke liye)
output "github_actions_role_arn" {
  value = module.iam.github_actions_role_arn
}