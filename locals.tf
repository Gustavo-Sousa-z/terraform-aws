locals {
  tags_private = {
    "kubernetes.io/role/internal-elb" = 1 #Esta tag é necessário parar utilizar ELB na subnet privada
  }

  tags_public = {
    "kubernetes.io/role/elb" = 1
  }

  filter_resourse = {
    "Project" = "${var.Project_name}"
  }
}