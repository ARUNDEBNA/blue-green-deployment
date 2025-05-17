variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "node_type" {
  description = "Instance type for worker nodes"
}

variable "nodes_desired" {
  description = "Desired number of worker nodes"
}

variable "nodes_max" {
  description = "Maximum number of worker nodes"
}

variable "nodes_min" {
  description = "Minimum number of worker nodes"
}