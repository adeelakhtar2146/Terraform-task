variable "project_name" {
  description = "Project ka naam (e.g., eks-demo)"
  type        = string
}

variable "environment" {
  description = "Environment ka naam (dev/prod)"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC ka CIDR block"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "instance_types" {
  description = "Worker nodes ke liye EC2 instance types"
  type        = list(string)
}

variable "node_desired_size" {
  description = "Nodes ki desired tadad"
  type        = number
}

variable "node_max_size" {
  description = "Nodes ki maximum tadad"
  type        = number
}

variable "node_min_size" {
  description = "Nodes ki minimum tadad"
  type        = number
}

variable "tags" {
  description = "Resources ke liye extra tags"
  type        = map(string)
  default     = {}
}