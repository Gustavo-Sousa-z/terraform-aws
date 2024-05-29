#Subnets Publicas AZ-A e AZ-B
resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a" #Função para calcular o cidr_block da subnet a partir da VPC
  map_public_ip_on_launch = true

  tags = merge(
    local.tags_public,
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
    local.tags_public,
    {
      Name = "public-subnet-eks-1b"
    }
  )
}