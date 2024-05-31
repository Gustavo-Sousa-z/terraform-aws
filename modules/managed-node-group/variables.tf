variable "tags" {
  description = "Tag que será incluida em todos os recursos como nome do projeto para filtro"
  type        = map(string)
}

variable "eks_mng_role_name" {
  description = "Nome da role dos nodes"
  type        = string
  default     = "eks-mng-role-name" #ajustar o nome : Tira esse name no final
}

variable "private_subnet_1a" {
  description = "Subnet privada-1a que será utilizadas no cluster"
  type        = string
}

variable "private_subnet_1b" {
  description = "Subnet privada-1b que será utilizadas no cluster"
  type        = string
}

variable "cluster_name" {
  description = "Nome do cluster para utilizar no mng"
  type        = string
}

variable "node_group_name" {
  description = "Nome do mng"
  type        = string
  default     = "eks_mng"
}