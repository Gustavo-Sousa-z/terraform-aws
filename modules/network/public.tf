#Subnets Publicas AZ-A e AZ-B
resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1) #Função para calcular o cidr_block da subnet a partir da VPC
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    var.eks_tag_public,
    {
      Name = "${var.public_subnet_name_1a}"
    }
  )
}

#Atachando RT_public_eks as subnets publicas
resource "aws_route_table_association" "attach_RT_publ_eks_1a" {
  route_table_id = aws_route_table.RT_public_eks.id
  subnet_id      = aws_subnet.eks_subnet_public_1a.id
}

resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2) #Função para calcular o cidr_block da subnet a partir da VPC
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    var.eks_tag_public,
    {
      Name = "${var.public_subnet_name_1b}"
    }
  )
}

#Atachando RT_public_eks as subnets publicas
resource "aws_route_table_association" "attach_RT_publ_eks_1b" {
  route_table_id = aws_route_table.RT_public_eks.id
  subnet_id      = aws_subnet.eks_subnet_public_1b.id
}