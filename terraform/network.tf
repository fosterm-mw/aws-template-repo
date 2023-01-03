
module "network" {
  count = var.network_enabled ? 1 : 0

  source = "./modules/terraform-aws-eks-network"

  vpc_name = var.vpc_name
}

