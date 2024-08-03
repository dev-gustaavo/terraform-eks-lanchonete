variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "EKS cluster name"
}

variable "eks_role_arn" {
  description = "EKS Role ARN"
}

variable "subnet_id" {
  description = "Subnet id"
}
