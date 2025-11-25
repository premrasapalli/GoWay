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
  version = "19.21.0"

  cluster_name    = "goway-cluster"
  cluster_version = "1.29"

  vpc_id      = "vpc-02a73c94354f271c8"

  subnet_ids  = [
    "subnet-0fdcd74e653ed3971",
    "subnet-0a41b261e1bd12593"
  ]

  node_groups = {
    goway_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_types   = ["t3.medium"]
    }
  }
}
