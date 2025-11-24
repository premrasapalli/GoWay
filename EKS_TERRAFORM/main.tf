terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.2.0"
}

variable "aws_region" {
  default = "us-east-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "goway-cluster"
  cluster_version = "1.29"

  vpc_id  = "vpc-xxxx"
  subnets = ["subnet-xxx", "subnet-yyy"]

  node_groups = {
    goway_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_types   = ["t3.medium"]
    }
  }
}
