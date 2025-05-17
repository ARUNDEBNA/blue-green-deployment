provider "aws" {
  region = var.region
}

module "eks_cluster" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  node_type    = var.node_type
  nodes_min    = var.nodes_min
  nodes_max    = var.nodes_max
  nodes_desired = var.nodes_desired
}

resource "helm_release" "jenkins" {
  name       = "jenkins"
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"
  namespace  = "jenkins"
  version    = "4.3.3"
  values     = [file("jenkins-values.yaml")]
}