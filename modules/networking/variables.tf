variable "vpc_cidr" {
  type        = string
  description = "VPC ka CIDR block"
}

variable "project_name" {
  type        = string
  description = "Project ka naam"
}

variable "environment" { type = string }

variable "tags" {
  type        = map(string)
  description = "Resources ke liye tags"
  default     = {}
}