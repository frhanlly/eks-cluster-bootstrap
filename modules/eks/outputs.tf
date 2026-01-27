output "eks_cluster" {
  value = aws_eks_cluster.eks_cluster
}

output "oidc" {
  value = aws_iam_openid_connect_provider.eks_oidc
}