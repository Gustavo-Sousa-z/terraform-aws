#Alocação de EIP e criação do Nat gateway utilizando o EIP préviamente alocado
resource "aws_eip" "eip_ngw_eks_1a" {
  depends_on = [aws_internet_gateway.ig_eks]
  tags = merge(
    local.filter_resourse,
    {
      Name      = "eip-1a-eks"
      "destiny" = "NG-eks-1a"
    }
  )
}

resource "aws_eip" "eip_ngw_eks_1b" {
  depends_on = [aws_internet_gateway.ig_eks]
  tags = merge(
    local.filter_resourse,
    {
      Name      = "eip-1b-eks"
      "destiny" = "NG-eks-1b"
    }
  )
}

resource "aws_nat_gateway" "ngw_public_1a" {
  subnet_id     = aws_subnet.eks_subnet_public_1a.id
  allocation_id = aws_eip.eip_ngw_eks_1a.allocation_id

  depends_on = [aws_internet_gateway.ig_eks]

  tags = merge(
    local.filter_resourse,
    {
      Name = "NG-eks-1a"
    }
  )
}

resource "aws_nat_gateway" "ngw_public_1b" {

  subnet_id     = aws_subnet.eks_subnet_public_1b.id
  allocation_id = aws_eip.eip_ngw_eks_1b.allocation_id

  depends_on = [aws_internet_gateway.ig_eks]

  tags = merge(
    local.filter_resourse,
    {
      Name = "NG-eks-1b"
    }
  )

}