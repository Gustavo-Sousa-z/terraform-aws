locals {
  tags_private = {
    "kubernetes.io/role/internal-elb" = 1 #Esta tag é necessário parar utilizar ELB na subnet privada
    "To"                              = "EKS"
  }

  tags_public = {
    "kubernetes.io/role/elb" = 1
    "To"                     = "EKS"
  }

}