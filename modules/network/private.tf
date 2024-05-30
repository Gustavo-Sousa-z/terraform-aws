#Subnets Privadas AZ-A e AZ-B
resource "aws_subnet" "eks_subnet_private_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3) #Função para calcular o cidr_block da subnet a partir da VPC
  availability_zone = "${var.region}a"

  tags = merge(
    var.tags,
    var.eks_tag_private,
    {
      Name = "${var.priv_subnet_name_1a}"
    }
  )
}

#Atachando RT_private_eks_1a as subnets publicas
resource "aws_route_table_association" "attach_RT_priv_eks_1a" {
  route_table_id = aws_route_table.RT_private_eks_1a.id
  subnet_id      = aws_subnet.eks_subnet_private_1a.id
}

resource "aws_subnet" "eks_subnet_private_1b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${var.region}b" #Função para calcular o cidr_block da subnet a partir da VPC

  #A função merge esta contatenando todas as tags criadas no locals com minhas tags próprias
  tags = merge(
    var.tags,
    var.eks_tag_private,
    {
      Name = "${var.priv_subnet_name_1b}"
    }
  )
}

#Atachando RT_private_eks_1b as subnets publicas
resource "aws_route_table_association" "attach_RT_priv_eks_1b" {
  route_table_id = aws_route_table.RT_private_eks_1b.id
  subnet_id      = aws_subnet.eks_subnet_private_1b.id
}