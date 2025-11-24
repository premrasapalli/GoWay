terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.31.0"

  cluster_name    = "goway-cluster"
  cluster_version = "1.29"

  vpc_id  = "vpc-0ff1c7e5718ff6275"
  subnets = "subnet-0e483afedc2e4ca19"

  node_groups = {
    goway_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_types   = ["t3.medium"]
    }
  }
}
