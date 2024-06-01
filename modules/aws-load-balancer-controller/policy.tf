resource "aws_iam_policy" "eks_controller_policy" {
  name        = var.eks_controller_policy_name
  description = "Politica para uso do controller (ELB)"
  policy      = file("${path.module}/controller.json")
  tags = merge(
    var.tags,
    {
      Name = "${var.eks_controller_policy_name}"
    }
  )
}