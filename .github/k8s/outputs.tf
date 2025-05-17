output "cluster_name" {
  value = module.eks_cluster.cluster_name
}

output "jenkins_url" {
  value = "http://${helm_release.jenkins.status.0.load_balancer.0.ingress.0.hostname}"
}

output "nodejs_app_url" {
  value = "http://${kubernetes_service.nodejs_app.status.0.load_balancer.0.ingress.0.hostname}"
}