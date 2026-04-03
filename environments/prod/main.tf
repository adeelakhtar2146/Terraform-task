module "networking" {
  source       = "../../modules/networking"
  vpc_cidr     = var.vpc_cidr
  project_name = var.project_name
  # Environment variable pass karna zaroori hai tags ke liye
  environment  = var.environment 
}

module "iam" {
  source       = "../../modules/iam"
  project_name = var.project_name
  environment  = var.environment
}

module "eks" {
  source           = "../../modules/eks"
  project_name     = var.project_name
  environment      = var.environment
  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.node_role_arn 
  
  # PROD mein hum hamesha PRIVATE subnets use karte hain
  # Ensure karein ke aapke networking module ke output mein 'private_subnet_ids' mojood ho
  subnet_ids       = module.networking.private_subnet_ids 
  
  instance_types   = var.instance_types
  desired_size     = var.node_desired_size
  max_size         = var.node_max_size
  min_size         = var.node_min_size
}