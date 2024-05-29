resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "eks_vpc"
  }
}
#Subnets Publicas AZ-A e AZ-B
resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a" #Função para calcular o cidr_block da subnet a partir da VPC
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name = "public-subnet-eks-1a"
    }
  )
}

resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b" #Função para calcular o cidr_block da subnet a partir da VPC
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name = "public-subnet-eks-1b"
    }
  )
}

#Subnets Privadas AZ-A e AZ-B
resource "aws_subnet" "eks_subnet_private_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3) #Função para calcular o cidr_block da subnet a partir da VPC
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    local.tags,
    {
      Name = "private-subnet-eks-1a"
    }
  )
}

resource "aws_subnet" "eks_subnet_private_1b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.name}b" #Função para calcular o cidr_block da subnet a partir da VPC

  #A função merge esta contatenando todas as tags criadas no locals com minhas tags próprias
  tags = merge(
    local.tags,
    {
      Name = "private-subnet-eks-1b"
    }
  )
}