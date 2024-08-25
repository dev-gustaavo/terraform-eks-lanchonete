provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "fiap-tech-challenge-terraform-state"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = var.eks_role_arn

  vpc_config {
    subnet_ids = var.subnet_id
  }
}
