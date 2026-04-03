output "prod_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "prod_vpc_id" {
  value = module.networking.vpc_id
}