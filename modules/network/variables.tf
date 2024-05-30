variable "region" {
  description = "Região onde será criado os recusos"
  type        = string
  default     = "us-east-1"
}
variable "tags" {
  description = "Tag que será incluida em todos os recursos como nome do projeto para filtro"
  type        = map(string)
}
variable "eks_tag_public" {
  description = "Se quiser implantar balanceadores de carga em uma sub-rede publica é necessário tag"
  type        = map(string)
  default = {
    "kubernetes.io/role/elb" = 1
  }
}
variable "eks_tag_private" {
  description = "Se quiser implantar balanceadores de carga em uma sub-rede privadas é necessário tag"
  type        = map(string)
  default = {
    "kubernetes.io/role/internal-elb" = 1
  }
}

#Informações utilizadas no recurso de VPC
#Informações incluidas no arquivo vpc.tf
variable "cidr_block" {
  description = "CIDR block da VPC"
  type        = string
}

#Informações utilizadas no recurso de subnet publica
#Informações incluidas no arquivo public.tf
variable "public_subnet_name_1a" {
  description = "Nome da subnet publica 1a"
  type        = string
  default     = "publica-subnet-eks-1a"
}
variable "public_subnet_name_1b" {
  description = "Nome da subnet publica 1b"
  type        = string
  default     = "publica-subnet-eks-1a"
}

#Informações utilizadas no recurso de subnet privada
#Informações incluidas no arquivo private.tf
variable "priv_subnet_name_1a" {
  description = "Nome da subnet privada 1a"
  type        = string
  default     = "private-subnet-eks-1a"
}
variable "priv_subnet_name_1b" {
  description = "Nome da subnet privada 1a"
  type        = string
  default     = "private-subnet-eks-1b"
}

#Informações utilizadas no recurso de EIP e NGW
#Informações incluidas no arquivo ngw.tf
variable "eip_1a_name" {
  description = "Nome do EIP 1a"
  type        = string
  default     = "eip-1a-eks"
}
variable "eip_1b_name" {
  description = "Nome do EIP 1b"
  type        = string
  default     = "eip-1b-eks"
}
variable "ngw_name_1a" {
  description = "Nome do ngw 1a"
  type        = string
  default     = "NG-eks-1a"
}
variable "ngw_name_1b" {
  description = "Nome do ngw 1b"
  type        = string
  default     = "NG-eks-1b"
}

#Informações utilizadas no recurso de Internet gateway e route table
#Informações incluidas no arquivo igw-rt.tf
variable "igw_name" {
  description = "Nome do Internet gateway"
  type        = string
  default     = "ig_vpc_eks"
}
variable "rt_public_name" {
  description = "Nome do tabela de rota public"
  type        = string
  default     = "RT-public-eks"
}
variable "rt_priv_name_1a" {
  description = "Nome do tabela de rota private 1a"
  type        = string
  default     = "RT-private-eks-1a"
}
variable "rt_priv_name_1b" {
  description = "Nome do tabela de rota private 1b"
  type        = string
  default     = "RT-private-eks-1b"
}