# Liberando a porta para acesso ao cluster - Kubectl
resource "aws_security_group_rule" "sg_cluster_rule_api" {
  type      = "ingress"
  from_port = 443
  to_port   = 443
  protocol  = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
  security_group_id = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}