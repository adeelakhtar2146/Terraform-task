output "cluster_role_arn" {
  description = "EKS Cluster ka IAM Role ARN"
  value       = aws_iam_role.eks_cluster.arn
}

output "node_role_arn" {
  description = "Worker Nodes ka IAM Role ARN"
  value       = aws_iam_role.eks_node_group.arn
}

output "github_actions_role_arn" {
  description = "GitHub Actions ke liye IAM Role ka ARN"
  # Yahan check karein ke aapke resource ka sahi naam kya hai
  # Agar resource aws_iam_role.github_actions hai, toh:
  value       = aws_iam_role.github_actions.arn 
}