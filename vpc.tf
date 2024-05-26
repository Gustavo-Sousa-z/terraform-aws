resource "aws_vpc" "primeira_VPC" {
  cidr_block         = "10.0.0.0/16"
  enable_dns_support = false

  tags = {
    Name       = "Primeira_VPC"
    "Criado"   = "Pelo terraform"
    "State S3" = "Alterado"
  }
}