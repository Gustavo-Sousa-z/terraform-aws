locals {
  tags = {
    "kubernetes.io/role/internal-elb" = 1 #Esta tag é necessário parar utilizar ELB na subnet
    "To"                              = "EKS"
  }
}