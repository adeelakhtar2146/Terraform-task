project_name      = "eks-demo"
environment       = "prod"
vpc_cidr          = "10.1.0.0/16" # Dev (10.0) se alag CIDR taake overlap na ho

# Production level instances (bara size)
instance_types    = ["t3.medium"] 

# Scaling settings
node_desired_size = 3
node_max_size     = 5
node_min_size     = 2