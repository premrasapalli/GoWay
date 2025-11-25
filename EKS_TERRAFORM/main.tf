module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.21.0"

  cluster_name    = "goway-cluster"
  cluster_version = "1.29"

  vpc_id = "vpc-02a73c94354f271c8"

  subnet_ids = [
    "subnet-0fdcd74e653ed3971",
    "subnet-0a41b261e1bd12593"
  ]

  eks_managed_node_groups = {
    goway_nodes = {
      desired_size = 2
      max_size     = 3
      min_size     = 1
      instance_types = ["t3.medium"]
    }
  }
}
