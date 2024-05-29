#Criação do Internet Gateway
resource "aws_internet_gateway" "ig_eks" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    local.filter_resourse,
    {
      Name = "ig_vpc_eks"
    }
  )
}

#Tabela de roteamento publica
resource "aws_route_table" "RT_public_eks" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig_eks.id
  }

  tags = merge(
    local.filter_resourse,
    {
      Name = "RT_public_eks"
    }
  )
}

#Tabela de roteamento privada 1a
resource "aws_route_table" "RT_private_eks_1a" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw_public_1a.id
  }

  tags = merge(
    local.filter_resourse,
    {
      Name = "RT-private-eks-1a"
    }
  )
}

#Tabela de roteamento privada 1b
resource "aws_route_table" "RT_private_eks_1b" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw_public_1b.id
  }

  tags = merge(
    local.filter_resourse,
    {
      Name = "RT-private-eks-1b"
    }
  )
}