output "oidc" {
  value = data.tls_certificate.eks_oidc_tls_certificate.certificates[*].sha1_fingerprint
}
output "cluster_name_to_mng" {
  value = aws_eks_cluster.eks_cluster.name
}