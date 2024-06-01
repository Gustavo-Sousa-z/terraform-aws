# Terraform-k8s-aws
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.51.1 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.13.2 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.30.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | 4.0.5 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cluster_eks"></a> [cluster\_eks](#module\_cluster\_eks) | ./modules/Cluster | n/a |
| <a name="module_eks_load_balancer_controller"></a> [eks\_load\_balancer\_controller](#module\_eks\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |
| <a name="module_eks_nodes"></a> [eks\_nodes](#module\_eks\_nodes) | ./modules/managed-node-group | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR block da VPC | `string` | n/a | yes |
| <a name="input_igw_name"></a> [igw\_name](#input\_igw\_name) | Nome do Internet gateway | `string` | `"ig_vpc_eks"` | no |
| <a name="input_ngw_name_1a"></a> [ngw\_name\_1a](#input\_ngw\_name\_1a) | Nome do ngw 1a | `string` | `"NG-eks-1a"` | no |
| <a name="input_ngw_name_1b"></a> [ngw\_name\_1b](#input\_ngw\_name\_1b) | Nome do ngw 1b | `string` | `"NG-eks-1b"` | no |
| <a name="input_priv_subnet_name_1a"></a> [priv\_subnet\_name\_1a](#input\_priv\_subnet\_name\_1a) | Nome da subnet privada 1a | `string` | `"private-subnet-eks-1a"` | no |
| <a name="input_priv_subnet_name_1b"></a> [priv\_subnet\_name\_1b](#input\_priv\_subnet\_name\_1b) | Nome da subnet privada 1a | `string` | `"private-subnet-eks-1b"` | no |
| <a name="input_public_subnet_name_1a"></a> [public\_subnet\_name\_1a](#input\_public\_subnet\_name\_1a) | Nome da subnet publica 1a | `string` | `"publica-subnet-eks-1a"` | no |
| <a name="input_public_subnet_name_1b"></a> [public\_subnet\_name\_1b](#input\_public\_subnet\_name\_1b) | Nome da subnet publica 1b | `string` | `"publica-subnet-eks-1a"` | no |
| <a name="input_rt_priv_name_1a"></a> [rt\_priv\_name\_1a](#input\_rt\_priv\_name\_1a) | Nome do tabela de rota private 1a | `string` | `"RT-private-eks-1a"` | no |
| <a name="input_rt_priv_name_1b"></a> [rt\_priv\_name\_1b](#input\_rt\_priv\_name\_1b) | Nome do tabela de rota private 1b | `string` | `"RT-private-eks-1b"` | no |
| <a name="input_rt_public_name"></a> [rt\_public\_name](#input\_rt\_public\_name) | Nome do tabela de rota public | `string` | `"RT-public-eks"` | no |
| <a name="input_tags_eip_1a"></a> [tags\_eip\_1a](#input\_tags\_eip\_1a) | Nome e recurso que irá utilizar EIP 1a | `string` | `"eip-1a-eks"` | no |
| <a name="input_tags_eip_1b"></a> [tags\_eip\_1b](#input\_tags\_eip\_1b) | Nome e recurso que irá utilizar EIP 1b | `string` | `"eip-1b-eks"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->