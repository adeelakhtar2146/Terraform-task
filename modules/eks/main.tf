resource "aws_eks_cluster" "this" {
  name     = "${var.project_name}-${var.environment}-cluster"
  role_arn = var.cluster_role_arn
  vpc_config { subnet_ids = var.subnet_ids }

  # YE HONA ZAROORI HAI Access Entry ke liye
  access_config {
    authentication_mode = "API_AND_CONFIG_MAP"
  }
}
resource "aws_eks_node_group" "nodes" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "main-nodes"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids
  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }
  instance_types = var.instance_types
}

resource "aws_eks_access_entry" "adeel_user" {
  cluster_name      = aws_eks_cluster.this.name
  principal_arn     = "arn:aws:iam::723626972500:user/eks-terraform" # Apna sahi ARN yahan likhein
  type              = "STANDARD"
}

resource "aws_eks_access_policy_association" "adeel_admin" {
  cluster_name  = aws_eks_cluster.this.name
  
  # YAHAN DEKHEIN: 'iam' ki jagah 'eks' hona chahiye
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
  
  principal_arn = "arn:aws:iam::723626972500:user/eks-terraform"

  access_scope {
    type = "cluster"
  }
}