variable "project_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "instance_types" {
  type = list(string)
}

variable "node_desired_size" {
  type = number
}

variable "node_max_size" {
  type = number
}

variable "node_min_size" {
  type = number
}

variable "tags" {
  type    = map(string)
  default = {}
}


variable "environment" {
  type    = string
  default = "prod"
}
