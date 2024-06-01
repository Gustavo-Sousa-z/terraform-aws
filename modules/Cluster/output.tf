output "oidc" {
  value = data.tls_certificate.eks_oidc_tls_certificate.certificates[*].sha1_fingerprint
}
output "cluster_name_to_mng" {
  value = aws_eks_cluster.eks_cluster.name
}

output "oidc_to_controller" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "eks_cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "eks_cluster_certificate" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}