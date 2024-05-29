#Criação da VPC
resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    local.filter_resourse,
    {
      Name = "eks_vpc"
    }
  )
}