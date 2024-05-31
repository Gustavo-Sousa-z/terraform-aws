variable "tags" {
  description = "Tag que será incluida em todos os recursos como nome do projeto para filtro"
  type        = map(string)
}
#Informações utilizadas no recurso de role
#Informações incluidas no arquivo iam.tf
variable "role_name" {
  description = "Nome da role do cluster"
  type        = string
  default     = "role-eks-cluster"
}
variable "eks_cluster_name" {
  description = "Nome do cluster eks"
  type        = string
  default     = "eks-cluster"
}
variable "public_subnet_1a" {
  description = "Subnet publica-1a que será utilizadas no cluster"
  type        = string
}
variable "public_subnet_1b" {
  description = "Subnet publica-1b que será utilizadas no cluster"
  type        = string
}
variable "sg_cluster_eks_name" {
  description = "Nome para o SG do cluster"
  type        = string
  default     = "SG-eks-cluster"
}
variable "vpc_cluster_id" {
  description = "Id da VPC para utilizar no Security Group"
  type        = string
}