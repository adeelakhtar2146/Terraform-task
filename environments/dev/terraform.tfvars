project_name      = "eks-project"
environment       = "dev"         # Value different
vpc_cidr          = "10.0.0.0/16" # Value different
instance_types    = ["t3.small"]  # Sasta instance
node_desired_size = 1             # Kam nodes
node_max_size     = 2
node_min_size     = 1