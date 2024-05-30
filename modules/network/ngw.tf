#Alocação de EIP e criação do Nat gateway utilizando o EIP préviamente alocado
#Alocando o EIP para Ngw na AZ 1a
resource "aws_eip" "eip_ngw_eks_1a" {
  depends_on = [aws_internet_gateway.ig_eks]
  tags = merge(
    var.tags,
    {
      Name      = var.eip_1a_name
      "Destiny" = var.ngw_name_1a
    }
  )
}

#Alocando o EIP para Ngw na AZ 1b
resource "aws_eip" "eip_ngw_eks_1b" {
  depends_on = [aws_internet_gateway.ig_eks]
  tags = merge(
    var.tags,
    {
      Name      = var.eip_1b_name
      "Destiny" = var.ngw_name_1b
    }
  )
}

#Cruando o ngw, alocando o EIP e vinculando a subnet privada 1a
resource "aws_nat_gateway" "ngw_public_1a" {
  subnet_id     = aws_subnet.eks_subnet_public_1a.id
  allocation_id = aws_eip.eip_ngw_eks_1a.allocation_id

  depends_on = [aws_internet_gateway.ig_eks]

  tags = merge(
    var.tags,
    {
      Name = "${var.ngw_name_1a}"
    }
  )
}

#Cruando o ngw, alocando o EIP e vinculando a subnet privada 1b
resource "aws_nat_gateway" "ngw_public_1b" {

  subnet_id     = aws_subnet.eks_subnet_public_1b.id
  allocation_id = aws_eip.eip_ngw_eks_1b.allocation_id

  depends_on = [aws_internet_gateway.ig_eks]

  tags = merge(
    var.tags,
    {
      Name = "${var.ngw_name_1b}"
    }
  )
}