variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "blue-green-cluster"
}

variable "node_type" {
  description = "Instance type for worker nodes"
  default     = "t3.medium"
}

variable "nodes_desired" {
  description = "Desired number of worker nodes"
  default     = 2
}

variable "nodes_max" {
  description = "Maximum number of worker nodes"
  default     = 3
}

variable "nodes_min" {
  description = "Minimum number of worker nodes"
  default     = 1
}