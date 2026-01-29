resource "aws_eks_node_group" "first_mng" {
  cluster_name    = "${var.cluster_name}"
  node_group_name = "primary_workers"
  node_role_arn   = aws_iam_role.eks_mng_role.arn
  subnet_ids      = ["${var.id_private_subnet_1}", "${var.id_private_subnet_2}"]

  disk_size      = var.disk_size
  instance_types = [""]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.eks_node_policy,
    aws_iam_role_policy_attachment.eks_cni_policy,
    aws_iam_role_policy_attachment.eks_ecr_policy,
  ]


  tags = "${var.tags}"
}